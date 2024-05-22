#!/bin/sh
VERSION=$(<VERSION)
TARGET=$(<TARGET)
docker build . -t $TARGET:latest -t $TARGET:$VERSION --build-arg VERSION=$VERSION --no-cache --platform linux/amd64
#docker login --username $DOCKERUSER --password $DOCKERPASS
#docker push v12nio/codestream-ci-packer:latest
#docker push v12nio/codestream-ci-packer:v$VERSION