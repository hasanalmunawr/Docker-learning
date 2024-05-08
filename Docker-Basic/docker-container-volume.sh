# STEP BY STEP TO BACK-UP

sudo docker bind-mount create postgredata

# CREATE THE CONTAINER
# Version --mount
docker container create --name postgresvolume --mount "type=volume, source=postgredata, destination=/data/pgdata" --publish 5433:5432 --env POSTGRES_USER=hasan --env POSTGRES_PASSWORD=hasan postgres:latest

# Version -v
docker container create --name postgresvolume -v postgredata:/data/pgdata --publish 5433:5432 --env POSTGRES_USER=hasan --env POSTGRES_PASSWORD=hasan postgres:latest

# MAKE SURE PRIOR TO BACK UP IT, MUST STOP THE CONTAINER PREVIUOUSLY SO THAT GET A CRASH OR SOMETHING ELSE
docker container stop postgresvolume

# CREATE SECOND CONTAINER AS DTO
docker container create --name nginxbackup -v /home/hasanalmunawr/Devlopment/Docker/belajar-docker-dasar/basic-docker/backup:/backup -v postgresvolume:/data nginx:latest

# SYNTAX FOR BACKUP
#tar cvf backup/(FILE_NAME).tar.gz /(DIRECTORY WANT TO BACKUP)
tar cvf backup/backup2.tar.gz /data

# AFTER BACKUP SUCCESED YOU CAN DELETE THE HELPER CONTAINER
docker container stop nginxbackup
docker container rm nginxbackup

# DO IN ONCE WAY
#docker container run --rm --name (CONTAINER_NAME) -v (FOLDER_SOURCE):(FOLDER_DESTINATION) -v (FOLDER_SOURCE):(FOLDER_DESTINATION) (IMAGE):(TAG) tar cvf backup/(FILE_NAME).tar.gz /(DIRECTORY)
docker container run --rm --name ubuntubackup -v /home/hasanalmunawr/Devlopment/Docker/belajar-docker-dasar/basic-docker/backup:/backup -v postgresvolume:/data ubuntu:latest tar cvf backup/backup3.tar.gz /data
