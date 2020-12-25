#!/usr/bin/env bash

docker rm -f sc-sentinel

docker image rm cike/sentinel-dashboard-1.7.2

# 切换到sentinel-dashboard/sentinel-dashboard目录
cd ..
cd ..
cd ..

# 进行打包,已经镜像构建
mvn clean package -DskipTests && mvn docker:build

# 切换到docker目录
cd src/main/dockerdocker

#构建容器并运行
docker-compose  up