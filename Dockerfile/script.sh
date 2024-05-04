
# FROM Instruction
docker build -t hasan/from from

docker image ls

# RUN Instruction
docker build -t hasan/run run

docker build -t hasan/run run --progress=plain --no-cache

# CMD Instruction
docker build -t hasan/command command

docker image inspect hasan/command

docker container create --name command hasan/command

docker container start command

docker container logs command
