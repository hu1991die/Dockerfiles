#!/usr/bin/env bash
docker pull centos:latest
docker build centos.jre8/ -t centos/jre8:latest
