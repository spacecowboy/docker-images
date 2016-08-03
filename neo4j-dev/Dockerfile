FROM debian:jessie
MAINTAINER jonas@cowboyprogrammer.org

RUN echo "deb http://ftp.debian.org/debian jessie-backports main" \
    > /etc/apt/sources.list.d/backports.list

RUN apt-get update -qqy && \
    apt-get install -y build-essential make gcc \
                       git mercurial python python3 \
                       python-pip python3-pip \
                       openjdk-8-jdk-headless \
                       maven && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

CMD /bin/bash
