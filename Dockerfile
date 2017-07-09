FROM ubuntu:16.04

# Usual user
RUN useradd -ms /bin/bash user

# System-wide setup
RUN set -x && \
    apt-get update && \
    apt-get -y install mecab libmecab-dev mecab-ipadic-utf8 git make curl xz-utils file sudo

# Checkout mecab-ipadic-neologd
USER user
WORKDIR /home/user

RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git
WORKDIR /home/user/mecab-ipadic-neologd
