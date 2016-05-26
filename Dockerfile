FROM debian:jessie-backports
MAINTAINER geraudster

RUN apt-get update && apt-get -y upgrade && apt-get -y install locales
RUN sed -i.bak 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get -y install \
    build-essential python3-dev python3-pip python3-zmq \
    curl \
    openjdk-8-jdk-headless \
    libcurl4-gnutls-dev \
    libzmq3-dev

