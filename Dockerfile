#
# Dockerfile for Ubuntu instance
#
FROM ubuntu:18.04
LABEL maintener="Koichi Murakami <koichi.murakami@kek.jp>"

#
RUN apt update && \
    apt install -y tcsh zsh sudo make build-essential vim \
                   libboost-dev libexpat1-dev libxerces-c-dev \
                   libcpputest-dev git cmake

#
RUN rm -rf /var/lib/apt/lists/*

#
WORKDIR /
