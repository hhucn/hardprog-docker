#!/bin/bash

if [ $# -eq 0 ] ; then
    docker run --name hardprog-container --rm -it -u $(id -u):$(id -g) -v "$PWD":/data -w /data hardprog-image
else
    docker run --name hardprog-container --rm --user $(id -u):$(id -g) -v "$PWD":/data -w /data hardprog-image "$@"
fi
