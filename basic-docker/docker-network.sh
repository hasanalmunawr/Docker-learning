# SEE THE NETWORK AVAILABLE
docker network ls

#docker network create --driver (DRIVER_NAME) (NETWORK_NAME)
docker network create --driver bridge contohnetwork

# bridge
# host
# none

#docker network rm (NETWORK_NAME)
docker network rm contohnetwork
