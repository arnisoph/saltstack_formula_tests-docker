FROM bechtoldt/saltstack_formula_tests:debian_8
MAINTAINER Arnold Bechtoldt

RUN apt-get update -qq && \
  apt-get upgrade -yV -o DPkg::Options::=--force-confold

RUN curl -L https://bootstrap.saltstack.com | sh -s -- -X -Z -P -d -n git v2015.8.2 && mkdir -p /var/log/salt

RUN apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
