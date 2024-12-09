#!/bin/zsh

ARCH=aarch64
VERSION=v2.31.0
NAME=compose
curl -L https://github.com/docker/${NAME}/releases/download/${VERSION}/docker-${NAME}-darwin-${ARCH} -o ${NAME}
mkdir -p ~/.docker/cli-plugins
mv ${NAME} ~/.docker/cli-plugins/docker-${NAME}
chmod +x ~/.docker/cli-plugins/docker-${NAME}
docker ${NAME} version # verify installation

