FROM centos:centos6
MAINTAINER D. J. Hagberg <dhagberg@millibits.com>
ENV ksurl http://puppetmaster:4080/ks-dev
ENV BUILDTS 2016-02-18T23:23Z
COPY build/ /root/build/
RUN /root/build/post_install $BUILDTS

ENTRYPOINT ["/bin/bash"]
