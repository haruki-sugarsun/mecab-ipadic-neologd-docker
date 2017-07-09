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
$ docker run -it --name mecab-ipadic-neologd-docker mecab-ipadic-neologd-docker:0.1
```

## Tips
### 
After `docker run`, you will see a prompt of a user `user` already in a checked-out directory.
You can run
```
$ ./bin/install-mecab-ipadic-neologd -n
```
to let `mecab-ipadic-neologd` build the dictionary.
and try
```
$ echo `あしびきの山鳥の尾のしだり尾の ながながし夜をひとりかも寝む 柿本人麻呂` | mecab -d /usr/lib/mecab/dic/mecab-ipadic-neologd
```

TODO: add tips.
