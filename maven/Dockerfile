FROM maven:3.5
MAINTAINER Johan Lundberg <lundberg@sunet.se>
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN /bin/sed -i s/deb.debian.org/ftp.se.debian.org/g /etc/apt/sources.list
RUN apt-get -q update
RUN apt-get -y upgrade
RUN apt-get install -y locales git-core wget sloccount
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
