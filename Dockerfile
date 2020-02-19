FROM node:10-alpine

ENV NODE_VERSION 10.16.0

WORKDIR /usr/src/app

COPY package*.json ./
COPY . .

EXPOSE 3000

RUN yarn install

CMD ["yarn", "run", "start"]
