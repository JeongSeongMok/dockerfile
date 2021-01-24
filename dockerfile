FROM ubuntu:18.04
LABEL maintainer JeongSeongMok

RUN apt-get update
RUN apt-get install -y git
RUN useradd -r -u 123 JeongSeongMok

RUN set -xe \ 
    && apt -y -qq install sudo tmux

RUN git clone https://github.com/JeongSeongMok/tmux-mok
RUN set -xe \
    && cd tmux-mok \
    && sudo sh install.sh \
