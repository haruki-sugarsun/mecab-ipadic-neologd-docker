# mecab-ipadic-neologd-docker

## What is this?
This repository demonstrates 
* Based on a docker image for `ubuntu`.
* Install the necessary packages.
* Checkout the latest from https://github.com/neologd/mecab-ipadic-neologd/

## How to try
Install Docker and try the following.
```
$ docker build -t mecab-ipadic-neologd-docker:0.1 .
$ docker run --name mecab-ipadic-neologd-docker -d -p 8885:80 mecab-ipadic-neologd-docker:0.1
```

## Tips
TODO: add tips.
