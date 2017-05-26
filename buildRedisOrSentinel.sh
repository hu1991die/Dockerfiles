#!/usr/bin/env bash
docker build redis/ -t redis:latest
docker build redis-sentinel/ -t redis-sentinel:latest