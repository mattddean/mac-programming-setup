#!/bin/zsh

ARCH=arm64
VERSION=v0.19.2
NAME=buildx
curl -L https://github.com/docker/buildx/releases/download/${VERSION}/${NAME}-${VERSION}.darwin-${ARCH} -o ${NAME}
mkdir -p ~/.docker/cli-plugins
mv ${NAME} ~/.docker/cli-plugins/docker-${NAME}
chmod +x ~/.docker/cli-plugins/docker-${NAME}
docker ${NAME} version # verify installation
