FROM golang:1.18-alpine

RUN mkdir app
COPY main.go app

EXPOSE 8080
#EXPOSE port (DEFAULT USE TCP
# EXPOSE 8080
# EXPOSE port/tcp
# EXPOSE 8080/tcp
# EXPOSE port/udp

CMD go run app/main.go


