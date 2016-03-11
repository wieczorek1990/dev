#!/usr/bin/env bash

dir=$(dirname $(readlink -f $0))
name=$(basename ${dir})

docker build -t ${name} ${dir}

