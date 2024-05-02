# Mounting
# docker container create --name namacontainer --mount “type=bind,source=folder,destination=folder,readonly” image:tag


docker container create --name postgresdate --mount "type=bind, source=/home/hasanalmunawr/Devlopment/Docker/belajar-docker-dasar/basic-docker/postgres-data, destination=/data/pgdata" --publish 1234:5432 postgres:latest

docker container create --name datapostgres --publish 5431:5432 --env POSTGRES_USER=hasan --env POSTGRES_PASSWORD=password -d postgres

