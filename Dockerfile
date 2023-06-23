FROM node:18.16-alpine as build
WORKDIR /home/node/alpine
COPY package.json .
COPY yarn.lock .
RUN yarn install
COPY . .
CMD ["node", "index.js"]