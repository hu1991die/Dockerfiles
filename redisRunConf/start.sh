#!/usr/bin/env bash
docker run --restart=always --expose 6379 -p 6379:6379 -d --name redis-6379 \
    -v /opt/redis/6379:/opt/redis \
    -v /etc/localtime:/etc/localtime:ro \
    redis:latest
docker run --restart=always --expose 26379 -p 26379:26379 -d --name redis-sentinel-26379 \
    -v /opt/redis/6379:/opt/redis \
    -v /etc/localtime:/etc/localtime:ro \
    redis-sentinel:latest

docker run --restart=always --expose 6380 -p 6380:6380 -d --name redis-6380 \
    -v /opt/redis/6380:/opt/redis \
    -v /etc/localtime:/etc/localtime:ro \
    redis:latest
docker run --restart=always --expose 26380 -p 26380:26380 -d --name redis-sentinel-26380 \
    -v /opt/redis/6380:/opt/redis \
    -v /etc/localtime:/etc/localtime:ro \
    redis-sentinel:latest

docker run --restart=always --expose 6381 -p 6381:6381 -d --name redis-6381 \
    -v /opt/redis/6381:/opt/redis \
    -v /etc/localtime:/etc/localtime:ro \
    redis:latest
docker run --restart=always --expose 26381 -p 26381:26381 -d --name redis-sentinel-26381 \
    -v /opt/redis/6381:/opt/redis \
    -v /etc/localtime:/etc/localtime:ro \
    redis-sentinel:latest