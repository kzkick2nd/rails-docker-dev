# WORKDIR = /usr/src/app
FROM ruby:2.4-onbuild

RUN bundle config --delete frozen

RUN bundle config --delete frozen \
 && apt-get update -qq && apt-get install -y build-essential \
 && curl -sL https://deb.nodesource.com/setup_9.x | bash - \
 && apt-get install -y nodejs \
 && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
 && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
 && apt-get update && apt-get install yarn \
 && rm -rf /var/lib/apt/lists/*
