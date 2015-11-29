FROM bechtoldt/saltstack_formula_tests:centos_6
MAINTAINER Arnold Bechtoldt

RUN yum -y update

RUN curl -L https://bootstrap.saltstack.com | sh -s -- -X -Z -P -d git v2015.8.1 && mkdir -p /var/log/salt

RUN yum clean all; rm -rf /tmp/* /var/tmp/*
