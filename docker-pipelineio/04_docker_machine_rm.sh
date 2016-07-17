#!/bin/sh

MACHINE_NAME=${1:-test-basic-cluster8}

docker-machine rm $MACHINE_NAME

