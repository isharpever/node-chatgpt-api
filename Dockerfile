FROM alpine:latest

RUN apk add nodejs npm \
    && npm install -g yarn

COPY ./ /app/chatgpt-api

WORKDIR /app/chatgpt-api
RUN yarn install --frozen-lockfile --non-interactive --no-progress

EXPOSE 3000

ENTRYPOINT npm start
