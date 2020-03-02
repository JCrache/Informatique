FROM alpine:3.11

RUN apk update \
    && apk add --no-cache openssh nano net-tools \
    && echo "Done"
