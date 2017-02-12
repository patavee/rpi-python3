
# pull base image
FROM resin/rpi-raspbian:jessie
MAINTAINER Patavee Charnvivit <patavee@gmail.com>

# install dependencies
WORKDIR /python-install
RUN apt-get update && apt-get install -y \
    wget \
    make && \
    wget https://www.python.org/ftp/python/3.6.0/Python-3.6.0.tgz && \
    tar xzvf Python-3.6.0.tgz && \
    cd Python-3.6.0/ && \
    ./configure && \
    make && \
    make install && \
    rm -rf /var/lib/apt/lists/*
