
# pull base image
FROM resin/rpi-raspbian:jessie
MAINTAINER Patavee Charnvivit <patavee@gmail.com>

# install dependencies
WORKDIR /python-install
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get dist-upgrade && \
    apt-get install -y \
    build-essential \
    libncursesw5-dev \
    libgdbm-dev \
    libc6-dev \
    zlib1g-dev \
    libsqlite3-dev \
    tk-dev \
    libssl-dev \
    openssl \
    wget \
    make && \
    wget https://www.python.org/ftp/python/3.6.0/Python-3.6.0.tgz && \
    tar xzvf Python-3.6.0.tgz && \
    cd Python-3.6.0/ && \
    ./configure && \
    make && \
    make install && \
    rm -rf /var/lib/apt/lists/*
