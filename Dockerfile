FROM golang:1.9-stretch
RUN apt-get update && apt-get install curl git
RUN curl https://glide.sh/get | sh
