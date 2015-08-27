#!/bin/bash
set -xe
# Get latest centos
sudo docker pull centos:centos6
# Run build
sudo docker build -t dhagberg/co811-base .
