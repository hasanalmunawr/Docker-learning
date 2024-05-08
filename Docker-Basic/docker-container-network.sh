# STEP BY STEP CRATE A NETWORK CONTAINER
# MONGO DB VERSION
docker network create --driver bridge mongonetwork

#CREATE CONTAINER
#docker container create --name mongodb --network (NETWORK_NAME) --env MONGO_INITDB_ROOT_USERNAME=hasan --env MONGO_INITDB_ROOT_PASSWORD=hasan mongo:latest
docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=hasan --env MONGO_INITDB_ROOT_PASSWORD=hasan mongo:latest

# CREATE SENCOND CONTAINER TO BE A THIRD PARTY (OPSIONAL DEPEND ON YOUR SELF)
docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://hasan:hasan@mongodb:27017/" mongo-express:latest

docker container start mongodb

docker container start mongodbexpress

# STOP CONNECTION
docker network disconnect mongonetwork mongodb

# START CONNECTION
docker network connect mongonetwork mongodb


# CREATE CONTAINER
# POSTGRES VERSION
docker network create --driver bridge postnetwork

#docker container create --name postgresdb --network (NETWORK_NAME) --publish 5434:5432 --env POSTGRES_PASSWORD=password postgres:latest
docker container create --name postgresdb --network postnetwork --publish 5434:5432 --env POSTGRES_PASSWORD=password postgres:latest

docker container start postdb

