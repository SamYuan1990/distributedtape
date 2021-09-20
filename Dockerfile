FROM alpine:3.13

LABEL maintainer="yy19902439@126.com"

ENV PYTHONUNBUFFERED=1

RUN apk add --update py-pip bash docker-cli openssl xxd dos2unix 
RUN pip install docker
RUN ansible-galaxy collection install community.docker

COPY . /home

ENV PATH $PATH:/home/bin
WORKDIR /home