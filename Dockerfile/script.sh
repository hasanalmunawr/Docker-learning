
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

#VOLUME Instruction
docker build -t hasan/volume volume

docker image inspect hasan/volume

docker container create --name volume --env APP_PORT=8080 -p 8080:8080 hasan/volume

docker container start hasan/volume

#e44deee0338d54be083135ee65a4aaa7b5ee08f28d4f009845eee674753040aa

docker volume ls

# WORKDIR Intruction
docker build -t hasan/workdir workdir

docker container create --name workdir -p 8080:8080 hasan/workdir

sudo docker container start workdir

sudo docker container exec -i -t workdir /bin/bash

# USER Intruction
docker build -t hasan/user user

docker container create --name user -p 8080:8181 hasan/user

docker container start workdir

sudo docker container exec -i -t user /bin/bash

whoami

#ARGUMENT Instruction
docker build -t hasan/arg argument --build-arg app=hsn

docker container create --name arg -p 9191:9191 hasan/arg

docker container start arg

docker container exec -i -t arg /bin/bash

docker container logs arg

# HEALTH Intruction
docker build -t hasan/health health

docker container create --name health -p 8080:8080 hasan/health

docker container start health

docker container ls

docker container inspect health

#ENTRYPOINT Instruction
docker build -t hasan/entrypoint entrypoint

docker container create --name entrypoint -p 8080:8080 hasan/entrypoint

docker container start entrypoint

docker container logs entrypoint

docker container exec -t -i entrypoint /bin/bash

#MULTI Intruction
docker build -t hasanalmunawr/multi multi

docker container create --name multi -p 8083:8080 hasanalmunawr/multi

docker push hasanalmunawr/multi



