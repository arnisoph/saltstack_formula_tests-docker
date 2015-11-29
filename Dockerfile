FROM bechtoldt/saltstack_formula_tests_minimal:debian_7
MAINTAINER Arnold Bechtoldt

RUN apt-get update -qq && \
  apt-get upgrade -yV -o DPkg::Options::=--force-confold

RUN curl -L https://bootstrap.saltstack.com | sh -s -- -X -Z -P -d git v2015.8.1 && mkdir -p /var/log/salt

RUN apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
