#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-hrgoldpay/hrgoldd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/hrgoldd docker/bin/
cp $BUILD_DIR/src/hrgold-cli docker/bin/
cp $BUILD_DIR/src/hrgold-tx docker/bin/
strip docker/bin/hrgoldd
strip docker/bin/hrgold-cli
strip docker/bin/hrgold-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
