# syntax=docker/dockerfile:1

FROM node:7.7.2-alpine
ENV NODE_ENV=production

WORKDIR /usr/app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

CMD [ "node", "server.js" ]