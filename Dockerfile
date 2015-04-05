FROM ubuntu:14.04
MAINTAINER gnkr8@outlook.com

RUN sudo apt-get -y install software-properties-common
RUN sudo add-apt-repository ppa:webupd8team/java
RUN sudo apt-get update
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  apt-get install -y oracle-java7-installer && \
  rm -rf /var/cache/oracle-jdk7-installer
RUN sudo apt-get -y install curl python-setuptools python-pip python-dev python-protobuf

ENV JAVA_HOME /usr/lib/jvm/java-7-oracle
