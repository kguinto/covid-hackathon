#!/bin/sh

set -e # ERR on non-zero responses

build_containers=false
while [ "$1" != "" ]; do
    case $1 in
        -b | --build-containers )    build_containers=true ;;
    esac
    shift
done

if [ "${build_containers}" = true ] ; then
  printf '%s' "--> Building UI ... "
  (cd ui; ./build.sh > /dev/null) \
    && echo "done!";

  printf '%s' "--> Building API  ... "
  (cd api; ./build.sh) >/dev/null \
    && echo "done!";

  echo "--> Building DB"
  (cd db; ./build.sh)  >/dev/null \
    && echo "done!";
fi

docker-compose down

echo "--> Running DB" && (cd db; sh run.sh) \
  && echo "--> Running UI/API" \
  && (docker-compose up -d) \
  || exit 1;


echo ""
echo "  All services running!"
echo "+--------------------------------------------------+"
echo "|  UI: http://localhost/                           |"
echo "| API: http://localhost:81/                        |"
echo "|  DB: postgres://postgres:docker@localhost:82/    |"
echo "+--------------------------------------------------+"

