
sudo docker container create --name contohpostgres postgres:lastest

sudo docker container start contohpostgres

# SEE THE LOGS OF CONTAINER IS RUNNING
#sudo docker container logs "CONTAINER_NAME"
sudo docker container logs contohpostgres

# SEE THE LOGS OF CONTAINER IS RUNNING AND WAITING NEW LOG
#sudo docker container logs -f "CONTAINER_NAME"
sudo docker container logs -f contohpostgres

ga tau gabut aja