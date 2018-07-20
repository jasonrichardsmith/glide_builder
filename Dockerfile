FROM golang:1.9-alpine
RUN apk update && apk add curl git
RUN curl https://glide.sh/get | sh
