# Mounting
# docker container create --name namacontainer --mount “type=bind,source=folder,destination=folder,readonly” image:tag


docker container create --name postgresdate -v /home/hasanalmunawr/Devlopment/Docker/belajar-docker-dasar/basic-docker/postgres-data:/data/pgdata --publish 1234:5432 --env POSTGRES_USER=hasan --env POSTGRES_PASSWORD=password --env POSTGRES_DB=users postgres:latest

docker container create --name datapostgres --mount "type=bind, source=/home/hasanalmunawr/Devlopment/Docker/belajar-docker-dasar/basic-docker/postgres-data, destination=/data/pgdata" --publish 5431:5432 --env POSTGRES_USER=hasan --env POSTGRES_PASSWORD=password postgres:latest

  -v /home/hasanalmunawr/Devlopment/Docker/belajar-docker-dasar/basic-docker/postgres-data:/data/pgdata \
# THE CORRECT VERSION FROM GEMINI AI
docker container create --name datapostgres \
  -p 5431:5432 \
  -e POSTGRES_USER=hasan \
  -e POSTGRES_PASSWORD=password \
  -e POSTGRES_DB=test \
  -e PGDATA=/home/hasanalmunawr/Devlopment/Docker/belajar-docker-dasar/basic-docker/postgres-data \
  -v /custom/mount:/var/lib/postgresql/data \
  postgres:latest

