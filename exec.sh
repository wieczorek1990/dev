#!/usr/bin/env bash

dir=$(dirname $(readlink -f $0))
name=$(basename ${dir})

docker start ${name}
docker exec -it "$@" ${name} /usr/bin/fish

