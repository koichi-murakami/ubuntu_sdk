#
# Dockerfile for CentOS instance
#
FROM ubuntu:latest
LABEL maintener="Koichi Murakami <koichi.murakami@kek.jp>"

#
RUN apt-get update

RUN apt-get install -y tcsh zsh sudo make build-essential \
                       libboost-dev libexpat1-dev libxerces-c-dev \
                       git cmake

#
RUN apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/*

#
WORKDIR /
