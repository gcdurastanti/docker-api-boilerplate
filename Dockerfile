FROM node:10-alpine

RUN mkdir /home/node/app && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN npm install --quiet

COPY --chown=node:node . .

EXPOSE 8080

CMD [ "npm", "start" ]
