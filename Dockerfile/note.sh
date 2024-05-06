
# FROM Instruction
docker build -t hasanalmunawr/from from

docker image ls

# RUN Instruction
docker build -t hasanalmunawr/run run

docker build -t hasanalmunawr/run run --progress=plain --no-cache

# CMD Instruction
docker build -t hasanalmunawr/command command

docker image inspect hasanalmunawr/command

docker container create --name command hasanalmunawr/command

docker container start command

docker container logs command

# LABEL Instruction
docker build -t hasanalmunawr/label label

docker image inspect hasanalmunawr/label

# ADD Instruction
docker build -t hasanalmunawr/add add

docker container create --name add hasanalmunawr/add

docker container start add

docker container logs add

# COPY Instruction
docker build -t hasanalmunawr/copy copy

docker container create --name copy hasanalmunawr/copy

docker container start copy

docker container logs copy

# .dockerignore
docker build -t hasanalmunawr/ignore ignore

docker container create --name ignore hasanalmunawr/ignore

docker container start ignore

docker container logs ignore

# EXPOSE Instruction
docker build -t hasanalmunawr/expose expose

docker image inspect hasanalmunawr/expose

docker container create --name expose -p 8080:8080 hasanalmunawr/expose

docker container start expose

docker container ls

docker container stop expose

# ENV Instruction
docker build -t hasanalmunawr/env env

docker image inspect hasanalmunawr/env

docker container create --name env --env APP_PORT=9090 -p 9090:9090 hasanalmunawr/env

docker container start env

docker container ls

docker container logs env

docker container stop env

# VOLUME Instruction
docker build -t hasanalmunawr/volume volume

docker image inspect hasanalmunawr/volume

docker container create --name volume -p 8080:8080 hasanalmunawr/volume

docker container start volume

docker container logs volume

docker container inspect volume

#15a53c9a60b9aaddb3c294cde03e6f283f319acf0db3e40c5d4b4a992a6451f1

docker volume ls

# WORKDIR Instruction
docker build -t hasanalmunawr/workdir workdir

docker container create --name workdir -p 8080:8080 hasanalmunawr/workdir

docker container start workdir

docker container exec -i -t workdir /bin/sh

# USER Instruction
docker build -t hasanalmunawr/user user

docker container create --name user -p 8080:8080 hasanalmunawr/user

docker container start user

docker container exec -i -t user /bin/sh

# ARG Instruction
docker build -t hasanalmunawr/arg arg --build-arg app=pzn

docker container create --name arg -p 8080:8080 hasanalmunawr/arg

docker container start arg

docker container exec -i -t arg /bin/sh

# HEALTHCHECK Instruction
docker build -t hasanalmunawr/health health

docker container create --name health -p 8080:8080 hasanalmunawr/health

docker container start health

docker container ls

docker container inspect health

# ENTRYPOINT Instruction
docker build -t hasanalmunawr/entrypoint entrypoint

docker image inspect hasanalmunawr/entrypoint

docker container create --name entrypoint -p 8080:8080 hasanalmunawr/entrypoint

docker container start entrypoint

# Multi Stage Build
docker build -t hasanalmunawr/multi multi

docker image ls

docker container create --name multi -p 8080:8080 hasanalmunawr/multi

docker container start multi

# Docker Push
docker tag khannedy/multi registry.digitalocean.com/programmerzamannow/multi

docker --config /Users/khannedy/.docker-digital-ocean/ push registry.digitalocean.com/programmerzamannow/multi

docker --config /Users/khannedy/.docker-digital-ocean/ pull registry.digitalocean.com/programmerzamannow/multi