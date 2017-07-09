FROM ubuntu:16.04

# System-wide setup
RUN apt-get update && \
    apt-get -y install mecab libmecab-dev mecab-ipadic-utf8 git make curl xz-utils file sudo

# Prepare a user
RUN useradd -ms /bin/bash user
RUN echo "user:password" | chpasswd
RUN adduser user sudo

# Checkout mecab-ipadic-neologd
USER user
WORKDIR /home/user
ADD ashibikino.txt /home/user/ashibikino.txt
RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git
WORKDIR /home/user/mecab-ipadic-neologd
