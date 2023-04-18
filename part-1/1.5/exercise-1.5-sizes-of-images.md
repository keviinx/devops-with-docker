```console
keviindranr@ubuntu:~$ docker images
REPOSITORY                          TAG       IMAGE ID       CREATED        SIZE
devopsdockeruh/simple-web-service   ubuntu    4e3362e907d5   2 years ago    83MB
devopsdockeruh/simple-web-service   alpine    fd312adc88e0   2 years ago    15.7MB
keviindranr@ubuntu:~$ docker start condescending_ptolemy
condescending_ptolemy
keviindranr@ubuntu:~$ docker exec -it condescending_ptolemy sh
/usr/src/app # tail -f ./text.log
2023-04-18 12:13:43 +0000 UTC
2023-04-18 12:13:45 +0000 UTC
2023-04-18 12:13:47 +0000 UTC
2023-04-18 12:13:49 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```
