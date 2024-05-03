
sudo docker volume create postgredata

docker container create --name postgresvolume --mount "type=volume, source=postgredata, destination=/data/pgdata" --publish 5433:5432 --env POSTGRES_USER=hasan --env POSTGRES_PASSWORD=hasan postgres:latest

docker container create --name postgresvolume -v postgredata:/data/pgdata --publish 5433:5432 --env POSTGRES_USER=hasan --env POSTGRES_PASSWORD=hasan postgres:latest

CREATE ROLE docker_user with login SUPERUSER PASSWORD ‘dockeruser’;

docker container create --name nginxbackup -v /home/hasanalmunawr/Devlopment/Docker/belajar-docker-dasar/basic-docker/backup:/backup -v postgresvolume:/data nginx:latest

tar cvf backup/backup2.tar.gz /data