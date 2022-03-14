FROM ubuntu:latest
RUN mkdir /app
COPY config.txt /app/config.txt
COPY private.key /app/private.key
RUN apt update
RUN apt add curl
RUN apt add nginx && touch /build-2.0 && mkdir -p /run/nginx && touch /index.html
COPY default.conf /etc/nginx/conf.d/
CMD ["nginx", "-g", "daemon off;"]
