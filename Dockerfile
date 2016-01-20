FROM node:0.10
MAINTAINER seanocat <seanocat@gmail.com>

COPY taiga-events /usr/src/taiga-events
COPY config.json /usr/src/taiga-events/config.json

WORKDIR /usr/src/taiga-events

RUN npm install --production
RUN npm install -g coffee-script

EXPOSE 80

CMD ["coffee", "index.coffee"]
