FROM ubuntu:18.04
LABEL maintainer JeongSeongMok

RUN apt-get update
RUN apt-get install -y git
RUN useradd -r -u 123 JeongSeongMok

RUN set -xe \ 
    && apt -y -qq install vim tmux perl wget tar man sudo adduser netstat-nat net-tools curl w3m git build-essential xxd file git make build-essential wget libcurses-perl nyancat sl python python3-pip zlib1g libjpeg8-dev zlib1g-dev
    && git clone https://github.com/JeongSeongMok/tmux-mok
    && cd tmux-mok
    && sudo sh install.sh