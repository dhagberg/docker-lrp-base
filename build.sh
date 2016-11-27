#!/bin/bash
set -xe
# Get latest centos
docker pull centos:centos6
# Update timestamp
buildts=$(TZ=UTC date "+%Y-%m-%dT%H:%M:%SZ")
sed -e "s/@BUILDTS@/${buildts}/g" Dockerfile.in > Dockerfile
# Run build
docker build -t dhagberg/co811-base .
/bin/rm -f Dockerfile
