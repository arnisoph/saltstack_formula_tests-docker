# Based on https://github.com/saltstack/docker-containers

FROM centos:6
MAINTAINER Arnold Bechtoldt

RUN rpm -Uvh --force http://mirrors.kernel.org/fedora-epel/6/x86_64/epel-release-6-8.noarch.rpm

RUN yum install -y libcom_err && yum update -y

RUN yum -y install --enablerepo=epel \
  curl \
  python \
  wget

RUN yum clean all; rm -rf /tmp/* /var/tmp/*
