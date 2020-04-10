#!/usr/bin/env bash
wget $1 -O openwrt.tar.gz
docker build . --build-arg FIRMWARE=openwrt.tar.gz -t $2
