FROM node:alpine

WORKDIR /app

COPY app.js package.json /app/

EXPOSE 3000

RUN apk update && \
    apk add --no-cache bash wget curl procps && \
    npm install

ENTRYPOINT [ "node", "/app/app.js" ]
