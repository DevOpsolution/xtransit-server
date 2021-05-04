FROM node:14.16.1-alpine3.13

WORKDIR /app

COPY . .

ENV NODE_ENV production

RUN npm config set registry https://registry.npm.taobao.org && npm install --prod

EXPOSE 9090

CMD [ "node", "dispatch.js" ]