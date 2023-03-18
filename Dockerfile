FROM node:12.20.2
WORKDIR /app
COPY package.json /app/package.json
#COPY server.js /app/server.js
COPY .env /app/.env
COPY rollup.config.js /app/rollup.config.js
COPY yarn.lock /app/yarn.lock

COPY .git/ /app/.git/
COPY public/ /app/public/
COPY modules/ /app/modules/
COPY plugins/ /app/plugins/
COPY scripts/ /app/scripts/

RUN yarn
EXPOSE 8080
CMD [ "yarn","serve" ]