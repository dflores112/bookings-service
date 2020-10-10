FROM node:12.18.3

RUN mkdir /app

WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 3000

CMD [ "node", "server/index.js" ]


