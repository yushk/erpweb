# FROM node:10
# ARG version=prod
# COPY ./ /app
# WORKDIR /app
# ENV SASS_BINARY_SITE=http://npm.taobao.org/mirrors/node-sass
# RUN yarn config set registry http://registry.npm.taobao.org/
# RUN yarn && yarn build:$version

FROM nginx:alpine
LABEL MAINTAINER="kaisawind <wind.kaisa@gmail.com>"
COPY dist /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
ADD default.conf /etc/nginx/conf.d/
