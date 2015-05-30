FROM centos:centos6
MAINTAINER D. J. Hagberg <dhagberg@millibits.com>
ENV ksurl http://puppetmaster.co811.org:4080/ks-dev
ENV BUILDTS 2015-05-30T04:38Z
COPY build/ /root/build/
RUN /root/build/post_install $BUILDTS

ENTRYPOINT ["/bin/bash"]
