#!/bin/bash
set -xe
# Get latest centos
docker pull centos:centos7
# Update timestamp
buildts=$(TZ=UTC date "+%Y-%m-%dT%H:%M:%SZ")
sed -e "s/@BUILDTS@/${buildts}/g" Dockerfile.in > Dockerfile
# Run build
docker build -t dhagberg/co811-base .
/bin/rm -f Dockerfile
# Tag and push if given
if [ "$1" = "push" ]; then
    docker push dhagberg/co811-base
    docker tag  dhagberg/co811-base svn.co811.org:5000/co811-base
    docker push svn.co811.org:5000/co811-base
fi
