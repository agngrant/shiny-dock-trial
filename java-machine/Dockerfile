#Pull base image
FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

#RUN apt-get -qq update
#RUN apt-get -qqy upgrade
#RUN apt-get -qqy install python-software-properties

#RUN apt-get install -y openjdk-7-jdk 
RUN rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64
RUN apt-get clean
