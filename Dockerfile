FROM mhart/alpine-node:14

ADD ./repositories /etc/apk/repositories
RUN apk add yarn \
    && yarn config set registry https://registry.npm.taobao.org/ \
    && mkdir -pv /app

WORKDIR /app

