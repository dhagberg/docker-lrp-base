#!/bin/bash
set -xeuo pipefail

# Update timestamp
buildts=$(TZ=UTC date "+%Y-%m-%dT%H:%M:%SZ")
sed -e "s/@BUILDTS@/${buildts}/g" Dockerfile.in > Dockerfile

PLAIN_NAME=lrp-u-base
HUB_NAME=dhagberg/$PLAIN_NAME
CI_NAME=cga-ci:5000/$PLAIN_NAME

docker build --pull -t $HUB_NAME .
/bin/rm -f Dockerfile

# Tag and push if given
if [ $# -ge 1 ]; then
    if [ "$1" = "push" ]; then
        docker push $HUB_NAME
        docker tag  $HUB_NAME $CI_NAME
        docker push $CI_NAME
    fi
fi
