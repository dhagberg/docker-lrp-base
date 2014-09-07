FROM centos:centos6
MAINTAINER D. J. Hagberg <dhagberg@millibits.com>
ENV ksurl http://puppetmaster.co811.org:4080/ks-dev
COPY build/ /root/build/
RUN /root/build/post_install

ENTRYPOINT ["/bin/bash"]
