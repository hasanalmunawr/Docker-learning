FROM golang:1.18-alpine

RUN mkdir /app

RUN addgroup -S hasanGroup
RUN adduser -S -D -h /app hasanUser hasanGroup
USER hasanUser

COPY main.go /app

EXPOSE 8181

CMD go run /app/main.go