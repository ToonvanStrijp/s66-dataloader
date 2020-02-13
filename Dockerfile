FROM node:12-alpine as base

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json .
COPY package-lock.json* .

RUN npm ci
COPY . .

CMD ["node", "main.js"]
