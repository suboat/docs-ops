#!/bin/bash

# version
if [ -z "$1" ]
  then
    echo "请输入版本号, 如 0.0.2"
    exit
fi

# define
APPFILE=Dockerfile
NAME=springboot
VERSION=$1
TIMEZONE=Asia/Shanghai
REGISTRY=tudyzhb/${NAME}:${VERSION}

# build app
$APPFILE=app.jar

# build docker
docker build --build-arg NAME=${NAME} --build-arg VERSION=${VERSION} --build-arg JAR_FILE=${APPFILE} --build-arg TIMEZONE=${TIMEZONE} -t ${REGISTRY} .

# push
echo "正在提交镜像 $REGISTRY"
docker push ${REGISTRY}
docker rmi ${REGISTRY}
