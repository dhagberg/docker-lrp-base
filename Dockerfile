FROM centos:centos6
MAINTAINER D. J. Hagberg <dhagberg@millibits.com>
ENV ksurl http://puppetmaster.co811.org:4080/ks-dev
ENV BUILDTS 2015-08-27T06:00
COPY build/ /root/build/
RUN /root/build/post_install $BUILDTS

ENTRYPOINT ["/bin/bash"]
