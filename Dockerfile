FROM alpine:latest

ARG GH_TOKEN
ENV GH_TOKEN=$GH_TOKEN

# Install required packages
RUN apk add \
  curl \
  gpg \
  unzip \
  icu-dev \
  jq \
  github-cli \
  gcompat

RUN apk update

# Install gh-bbs2gh extension
RUN gh extension install github/gh-bbs2gh
RUN gh extension upgrade github/gh-bbs2gh
