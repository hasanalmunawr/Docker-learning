# SEE THE NETWORK AVAILABLE
docker network ls

#docker network create --driver (DRIVER_NAME) (NETWORK_NAME)
docker network create --driver bridge contohnetwork

# bridge : the driver is using for create virtual network which might container can connection each other
# host : the dirver is just only running on linux
# none :

#docker network rm (NETWORK_NAME)
docker network rm contohnetwork


