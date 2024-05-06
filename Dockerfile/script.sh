
# FROM Instruction
docker build -t hasan/from from

docker image ls

# RUN Instruction
docker build -t hasan/run run

docker build -t hasan/run run --progress=plain --no-cache

# CMD Instruction
docker build -t hasan/command command

docker image inspect hasan/command

docker container create --name command hasan/command

docker container start command

docker container logs command

# LOG Instruction
docker build -t hasan/label label

docker image inspect hasan/label

#ADD Instruction
docker build -t hasan/add add

docker container create --name add hasan/add


#COPY Instruction
docker build -t hasan/copy copy
#why must be start with sudo????

docker container create --name copy hasan/copy

docker container start copy

docker container logs copy

# IGNORE
docker build -t hasan/ignore ignore

docker container create --name ignore hasan/ignore

docker container start ignore

docker container logs ignore

# EXPOSE Intruction
docker build -t hasan/expose expose

docker container create --name expose -p 8080:8080 hasan/expose

docker container start expose

docker container inspect expose

docker container logs expose

curl localhost:8080

#ENV Instruction
docker build -t hasan/env env

docker container create --name env --env APP_PORT=9191 -p 9191:9191 hasan/env

#