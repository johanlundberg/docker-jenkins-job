FROM ubuntu:16.04
MAINTAINER Leif Johansson <leifj@mnt.se>
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN /bin/sed -i s/deb.debian.org/ftp.se.debian.org/g /etc/apt/sources.list
RUN apt-get -q update
RUN apt-get install -y software-properties-common python-software-properties
RUN apt-get -y upgrade
RUN apt-get install -y cmake locales python2.7 python3 git-core swig libyaml-dev libyaml-dev python-dev python3-dev build-essential xsltproc libxml2-dev libxslt-dev libz-dev python-virtualenv wget automake libtool autoconf pkgconf sloccount
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
COPY builders /opt/builders
