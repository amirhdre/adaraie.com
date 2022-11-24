# Create a Jekyll container from a Ruby Alpline image

FROM ruby:2.7-alpine3.15

RUN apk update
RUN apk --no-cache build-base gcc cmake git 

RUN gem update bundler && gem install jekyll