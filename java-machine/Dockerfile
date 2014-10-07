#Pull base image
FROM ubuntu:14.04

RUN apt-get update -y

RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get -qq update
RUN echo oracle-java6-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get -qqy install oracle-java6-installer
RUN update-alternatives --display java

RUN apt-get clean
