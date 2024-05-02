#STEP BY STEP TO RUN OR INTO THE CONTAINER

#docker container exec -i -t {CONTAINER_ID/CONTAINER_NAME} /bin/bash
docker container exec  -i -t contohredis /bin/bash

#THE RESPONSE WILL BE LIKE THIS
#root@5b131f99b443:/data# ls
 #dump.rdb
 #root@5b131f99b443:/data# cd /
 #root@5b131f99b443:/# ls
 #bin   data  etc   lib    media  opt   root  sbin  sys  usr
 #boot  dev   home  lib64  mnt    proc  run   srv   tmp  var
 #root@5b131f99b443:/# redis-cli (TO RUN INTO REDIS)
 #127.0.0.1:6379> set hasan "Hasan Almunawar" (HERE YOU CAN DO ANYTHING IN REDIS OPERATIONS
 #OK
 #127.0.0.1:6379> get hasan
 #"Hasan Almunawar"
 #127.0.0.1:6379> exit
 #root@5b131f99b443:/# exit
 #exit (TO GET OUT FROM CONTAINER)




# cli (comand line interfice)
