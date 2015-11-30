FROM bechtoldt/saltstack_formula_tests:centos_7
MAINTAINER Arnold Bechtoldt <mail@arnoldbechtoldt.com>

RUN yum -y update

#RUN curl -L https://bootstrap.saltstack.com | sh -s -- -X -Z -P -d -n git v2015.8.0 && mkdir -p /var/log/salt
RUN curl -L https://raw.githubusercontent.com/bechtoldt/salt-bootstrap/centos7_docker/bootstrap-salt.sh | sh -s -- -X -Z -P -d -n git v2015.5.6 && mkdir -p /var/log/salt

RUN yum clean all; rm -rf /tmp/* /var/tmp/*
