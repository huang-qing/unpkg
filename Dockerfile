FROM node:12.20.2-alpine3.12

WORKDIR /app

COPY package.json /app/package.json
COPY package-lock.json /app/package-lock.json
COPY server.js /app/server.js
COPY .env /app/.env
COPY public/ /app/public/

RUN npm install --production

EXPOSE 8080

CMD [ "npm","run","serve:prod" ]