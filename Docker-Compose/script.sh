#CREATE CONTAINER
docker compose create

#START CONTAINER
docker compose start

#SEE CONTAINER
docker compose ps

#STOP CONTAINER
docker compose stop

#DELETE CONTAINER
docker compose down

docker compose ls

#MONITOR EVENT
#docker events --filter ‘container=nama’
docker events --filter mongo

#CHECK CONTAINER STATUS
docker compose stats

#CREATE ONLY IMAGE
docker compose build

CREATE EXTEND CONTAINER MODE
docker compose -f docker-compose.yaml -f dev.yaml create
