FROM ubuntu:16.04
MAINTAINER Leif Johansson <leifj@mnt.se>
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN apt-get -q update
RUN apt-get install -y software-properties-common python-software-properties
RUN apt-get -y upgrade
RUN apt-get install -y locales python2.7 python3 git-core swig libyaml-dev libyaml-dev python-dev python3-dev build-essential xsltproc libxml2-dev libxslt-dev libz-dev python-virtualenv wget
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
