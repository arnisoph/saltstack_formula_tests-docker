# Based on https://github.com/saltstack/docker-containers

FROM centos:6
MAINTAINER Arnold Bechtoldt <mail@arnoldbechtoldt.com>

RUN rpm -Uvh --force https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm

RUN yum install -y libcom_err && yum -y update

RUN yum -y install --enablerepo=epel \
  curl \
  python \
  wget \
  which

RUN yum clean all; rm -rf /tmp/* /var/tmp/*
