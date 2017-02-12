
# pull base image
FROM resin/rpi-raspbian:jessie
MAINTAINER Patavee Charnvivit <patavee@gmail.com>

# install dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-dev \
    python3-pip \
    python3-setuptools \
    python3-wheel \
    --no-install-recommends && \
    pip3 install --upgrade pip && \
    rm -rf /var/lib/apt/lists/*
