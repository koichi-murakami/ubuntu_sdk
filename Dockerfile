#
# Dockerfile for CentOS instance
#
FROM ubuntu:latest
LABEL maintener="Koichi Murakami <koichi.murakami@kek.jp>"

#
#RUN apt-get update --fix-missing
RUN apt-get update

RUN apt-get install -y tcsh zsh sudo make build-essential vim \
                       libboost-dev libexpat1-dev libxerces-c-dev \
                       libcpputest-dev git cmake

#
RUN apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/*

#
WORKDIR /

