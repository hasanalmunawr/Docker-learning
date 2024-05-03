
docker image pull ubuntu:latest

docker container run --rm --name ubunturestore -v /home/hasanalmunawr/Devlopment/Docker/belajar-docker-dasar/basic-docker/backup:/backup -v postgresvolume:/data ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"
bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"

