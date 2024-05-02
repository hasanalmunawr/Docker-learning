# ADD VARIABLE ENVIRONMENT
# To adding variable env, we can use statment --env or -e, such as :
 #docker container create --name namacontainer --env KEY=”value” --env KEY2=”value” image:tag

docker run --name contohpostgres -e POSTGRES_PASSWORD=password -d postgres

docker container create --name contohpostgres --publish

# POSTGRESQL
docker container create --name contohpostgres --publish 5432:5432 --env POSTGRES_PASSWORD=password postgres:latest

# MONGODB
docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=hasan --env MONGO_INITDB_ROOT_PASSWORD=password postgres:latest

#  environment:
 #      POSTGRES_USER: postgres
 #      POSTGRES_PASSWORD: password
 #      POSTGRES_DB: users