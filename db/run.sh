#!/bin/bash

echo "db/run.sh"

existing_db_pid=`docker ps -f name="crisisconnector_db" --format "{{.ID}}" | awk '{$1=$1};1'`;

if ! [ ${#existing_db_pid} = 0 ] ; then
  echo "--> Stopping and removing DB containers" 
  docker stop crisisconnector_db;
  docker rm crisisconnector_db;
fi

docker run -d \
  -p 82:5432 \
  -e POSTGRES_PASSWORD=docker \
  --name "crisisconnector_db" \
  crisisconnector/db:latest