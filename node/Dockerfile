FROM node:14.17.0-slim

RUN apt update && \
    apt install -y wget netcat && \
    wget -q -O /usr/bin/wait-for https://raw.githubusercontent.com/eficode/wait-for/v2.2.3/wait-for && \
    chmod +x /usr/bin/wait-for

COPY ./start.sh /tmp/start.sh
RUN chmod +x /tmp/start.sh

USER node

WORKDIR /home/node/app
