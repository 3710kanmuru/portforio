ROM ruby:2.5.8
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /mydock
WORKDIR /mydock

COPY Gemfile /mydock/Gemfile
COPY Gemfile.lock /mydocl/Gemfile.lock

RUN bundle install
COPY . /mydock

web:
build: ./