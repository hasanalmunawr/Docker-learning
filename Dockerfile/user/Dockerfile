FROM golang:1.18-alpine

RUN mkdir /app

RUN addgroup -S hasanGroup
RUN adduser -S -D -H /app hasanUser hasanGroup
RUN chown -R hasanUser:hasanGroup
USER hasanUser

COPY main.go /app
EXPOSE 8181

CMD go run /app/main.go