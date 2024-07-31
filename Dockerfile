FROM node:lts-alpine as build

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci

COPY . .
RUN npx tsc

CMD [ "node", "bot.js" ]
