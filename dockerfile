# Create a jekyll container from a ruby alpine image

# at minimum use ruby 2.5 or later
FROM ruby:2.7-alpine3.15

# add jekyll dependencies :
RUN apk update
RUN apk add --no-cache build-base gcc cmake git


# update ruby bundler and install jekyll
RUN gem update bundler && gem install bundler jekyll