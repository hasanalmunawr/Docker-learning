# STEP BY STEP TO RESTORE
docker image pull ubuntu:latest

# DO ONCE RESTORE
#docker container run --rm --name (CONTAINER_NAME) -v (FOLDER_SOURCE):(FOLDER_DESTINATION) -v (FOLDER_SOURCE):(FOLDER_DESTINATION) bash -c "cd /data && tar xvf /backup/(FILE_NAME).tar.gz --strip 1"
docker container run --rm --name ubunturestore -v /home/hasanalmunawr/Devlopment/Docker/belajar-docker-dasar/basic-docker/backup:/backup -v postgresvolume:/data ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"

# SYNTAX TO RESTORE (MANUAL)
bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"

