# syntax=docker/dockerfile:1

FROM node:lts

# WORKDIR /app (is not the host/local filesystem)
WORKDIR /app

# COPY src dest
COPY package*.json ./

RUN npm install

COPY .  .

ENV PORT=4321

EXPOSE 4321

CMD [ "npm", "start"]
