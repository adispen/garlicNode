FROM ubuntu
MAINTAINER Aedan Dispenza "aedan.dispenza@gmail.com"

RUN apt-get update && apt-get install -y wget sudo
RUN cd /root/ && wget https://github.com/GarlicoinOrg/Garlicoin/releases/download/20180121185844-arm-linux-gnueabihf/Garlicoin-x86_64-unknown-linux-gnu.tar.gz && \
        tar -xvf Garlicoin-x86_64-unknown-linux-gnu.tar.gz && rm -rf Garlicoin-x86_64-unknown-linux-gnu.tar.gz && mkdir /root/.garlicoin

COPY  garlicoin.conf /root/.garlicoin/.

EXPOSE 42070 42070

ENTRYPOINT /root/14.5-x86_64-unknown-linux-gnu/bin/garlicoind -printtoconsole
