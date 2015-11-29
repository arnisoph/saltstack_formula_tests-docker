# Based on https://github.com/saltstack/docker-containers

FROM centos:7
MAINTAINER Arnold Bechtoldt

RUN rpm -Uvh --force https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

RUN yum install -y libcom_err && yum -y update

RUN yum -y install --enablerepo=epel \
  curl \
  python \
  wget

RUN yum clean all; rm -rf /tmp/* /var/tmp/*
