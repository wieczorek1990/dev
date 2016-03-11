#!/usr/bin/env bash

dir=$(dirname $(readlink -f $0))
name=$(basename ${dir})

docker rm -f ${name} 2>/dev/null
docker run -it -v "${dir}/shared:/shared" --name ${name} "$@" ${name}

