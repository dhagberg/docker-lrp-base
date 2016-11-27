#!/bin/bash
set -xe
# Get latest centos
docker pull centos:centos6
# Run build
docker build -t dhagberg/co811-base .
