# To set the memory we can use statment --memory followed by number of amount memory will be use
# we can add size in b (byte), k (kilo byte), m (mega byte), or g (giga byte)
# such as --memory 100m

# Besides managing the memory, we also determine how many CPUs the container can use with paramter --cpus
# once we would like to set usage of cpu such as 1.5
# such as --cpus 1.5

docker container create --name simplenginx --publish 8081:80 --memory 100m --cpus 0.5 nginx:latest
