FROM golang:1.18-alpine

ARG app=main

RUN mkdir app
COPY main.go app

RUN mv app/main.go app/${app}.go

EXPOSE 9191

ENV app=${app}
CMD run go app/${app}.go
