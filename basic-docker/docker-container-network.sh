# STEP BY STEP CRATE A NETWORK CONTAINER
docker network create --driver bridge newnetwork

# MONGO DB
docker container create --name mongodb --network newnetwork --env MONGO_INITDB_ROOT_USERNAME=eko --env MONGO_INITDB_ROOT_PASSWORD=eko mongo:latest

# POSTGRES
docker container create --name postgresdb --network postnetwork --publish 5434:5432 --env POSTGRES_PASSWORD=password postgres:latest

docker image pull mongo-express:latest

docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://eko:eko@mongodb:27017/" mongo-express:latest

docker container start mongodb

docker container start mongodbexpress

docker network disconnect mongonetwork mongodb

docker network connect mongonetwork mongodb


# CREATE CONTAINER NETWORK BY HASAN
docker network create postnetwork
#docker container create --name namacontainer --network namanetwork image:tag
dockerc container create --name

#docker container create --name postdb --network postnetwork --env POSTGRES_PASSWORD=password postgres:latest

docker container create --name postgresdb --publish 5432:5432 --env POSTGRES_PASSWORD=password postgres:latest
