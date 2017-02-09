FROM node:slim

MAINTAINER François Tertre <f.tertre@brgm.fr>

RUN apt-get install git \
    && npm install --quiet --global \
      vue-cli

RUN mkdir /code
COPY . /code

WORKDIR /code