FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Kiev

RUN apt-get update && apt-get install -y \
    curl \
    iputils-ping \
    git \
    ansible \
    sshpass

RUN sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /usr/local/bin

WORKDIR /workdir
