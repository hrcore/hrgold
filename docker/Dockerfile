FROM debian:stretch
LABEL maintainer="HrGold Developers <dev@hrgold.org>"
LABEL description="Dockerised HrGoldCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
