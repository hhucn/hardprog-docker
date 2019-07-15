#!/bin/bash

if [ $# -eq 0 ] ; then
    docker run --name hardprog-container --rm -it --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -u $(id -u):$(id -g) -v "$PWD":/data -w /data hhucn/hardprog
else
    docker run --name hardprog-container --rm -i --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -u $(id -u):$(id -g) -v "$PWD":/data -w /data hhucn/hardprog "$@"
fi
