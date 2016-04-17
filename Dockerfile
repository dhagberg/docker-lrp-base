FROM centos:centos6
MAINTAINER D. J. Hagberg <dhagberg@millibits.com>
ENV ksurl http://puppetmaster:4080/ks-dev
ENV BUILDTS 2016-04-17T18:56:25Z
COPY build/ /root/build/
RUN /root/build/post_install $BUILDTS

ENTRYPOINT ["/bin/bash"]
