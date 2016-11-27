FROM centos:centos7
MAINTAINER D. J. Hagberg <dhagberg@millibits.com>
#ENV ksurl http://puppetmaster:4080/ks-dev
ENV BUILDTS 2016-11-26T02:11:24Z
COPY build/ /root/build/
RUN /root/build/post_install $BUILDTS

ENTRYPOINT ["/bin/bash"]
