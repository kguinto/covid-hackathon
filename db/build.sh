#!/bin/bash
# This script builds and tags a Docker image with pre-defined schema and data.
#
# Steps, outlined:
#  * Spin up a temporary Postgres instance
#  * Run queries/scripts against temporary PG instance for schema/data
#  * Create a pg_dump from that data and add it to the new Docker image

set -e # ERR on non-zero responses

cd $( dirname $0 ) # use this directory for relative paths

PORT=9000

# Spin up a temporary postgres instance
printf "%s" "--> Spinning up a temporary postgres instance... "
PG_PID=`docker run -d \
    -p ${PORT}:5432 \
    postgres:11.2-alpine postgres -N 600 | cut -c -6`
echo "done! $PG_PID"
function stop_pg {
  printf "Stopping $PG_PID... "
  docker stop $PG_PID >/dev/null && echo "stopped"
}
trap stop_pg EXIT

echo "--> Waiting for Postgres (localhost:${PORT})"
sleep 6; # NOTE: If this isn't enough, try `docker system prune`
# TODO: make this smarter

docker exec \
    -it $PG_PID \
      psql \
          -h 0.0.0.0 \
          -p 5432 \
          -U postgres \
          -c "show max_connections";

## Reads a SQL file into stdout, ignoring comments
function read_sql_file () { 
  echo $(sed "s/^\-\-.*//" $1 | tr "\n" " ")
}

echo "--> Creating database on $PG_PID"
docker exec \
    -it $PG_PID \
      psql \
          -h 0.0.0.0 \
          -p 5432 \
          -U postgres \
          -c "CREATE DATABASE help_directory"

echo "--> Initializing schema on $PG_PID"
createdb=$(read_sql_file sql/createdb.sql)

echo $createdb

docker exec \
    -it $PG_PID \
      psql \
          -h 0.0.0.0 \
          -p 5432 \
          -U postgres \
          -d help_directory \
          -c "${createdb}"


sleep 2;

ORG_COUNT=0
ORG_TOTAL=$(ls -l sql/organizations/*.sql | wc -l | sed -e 's/^[[:space:]]*//')

echo "--> Loading data"
for filename in sql/organizations/*.sql; do
  ORG_COUNT=$(($ORG_COUNT + 1))

  insert_org=$(cat ${filename} | tr "\n" " ");

  (    
    docker exec \
    $PG_PID \
      psql \
          -h 0.0.0.0 \
          -p 5432 \
          -U postgres \
          -d help_directory \
          -c "${insert_org}" &>/dev/null || \
      echo "Skipped $filename (likely duplicate)"
    ) &

  if [ $(($ORG_COUNT%100)) = 0 ] ; then
    echo "Inserted $ORG_COUNT of $ORG_TOTAL orgs"
    wait
  fi
  
done

wait

echo "Inserted $ORG_COUNT of $ORG_TOTAL orgs"


echo "--> Dumping data from $PG_PID"
rm -rf init/
mkdir init/

help_directory_dump=`docker exec \
    -it $PG_PID \
      pg_dump \
          -h 0.0.0.0 \
          -p 5432 \
          -U postgres \
          -d help_directory`

echo $"$help_directory_dump" > init/01_help_directory.sql

echo "--> Building Docker image crisisconnector/db:latest"
docker build --no-cache -t crisisconnector/db:latest .