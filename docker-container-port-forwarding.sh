#STEP BY STEP TO FORWARDING PORT DOCKER

# INSTALL NEW IMAGE AS AN EXAMPLE
docker image pull nginx:latest

# CREATE A CONTAINER WHESE PORT IS SHOWABLE
#docker container create --name (CONTAINER_NAME) --publish ("PORT_ACCESS":"IMG PORT") (IMG:TAG)
docker container create --name contohnginx --publish 8080:80 nginx:latest

#RUNNING THE CONTAINER
docker container start contohnginx

# TO MAKE SURE THAT THE CONTAINER IS RUNNIGN
docker container ls

# THE RETURN OF TERMINAL
#CONTAINER ID   IMAGE          COMMAND                  CREATED              STATUS          PORTS                                       NAMES
#6739a4bdb203   redis:latest   "docker-entrypoint.s…"   About a minute ago   Up 41 seconds   0.0.0.0:8081->6379/tcp, :::8081->6379/tcp   contohredis
#fd5f0910d9b1   nginx:latest   "/docker-entrypoint.…"   7 minutes ago        Up 3 seconds    0.0.0.0:8080->80/tcp, :::8080->80/tcp       contohnginx
#CONTAINER ID   IMAGE          COMMAND                  CREATED              STATUS          PORTS                                       NAMES
#6739a4bdb203   redis:latest   "docker-entrypoint.s…"   About a minute ago   Up 41 seconds   0.0.0.0:8081->6379/tcp, :::8081->6379/tcp   contohredis
#fd5f0910d9b1   nginx:latest   "/docker-entrypoint.…"   7 minutes ago        Up 3 seconds    0.0.0.0:8080->80/tcp, :::8080->80/tcp       contohnginx

# GO TO CHROME AND OPEN THE PORT
# localhost:8080

# TO STOP THE CONTAINER
docker container stop contohnginx