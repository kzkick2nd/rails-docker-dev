# WORKDIR = /usr/src/app
FROM ruby:2.4-onbuild

RUN bundle config --delete frozen

RUN apt-get update -qq && apt-get install -y \
    build-essential \
    nodejs \
 && rm -rf /var/lib/apt/lists/*
