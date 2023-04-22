```console
keviindranr@ubuntu:~$ git clone https://github.com/docker-hy/material-applications.git
Cloning into 'material-applications'...
remote: Enumerating objects: 684, done.
remote: Counting objects: 100% (78/78), done.
remote: Compressing objects: 100% (37/37), done.
remote: Total 684 (delta 49), reused 59 (delta 39), pack-reused 606
Receiving objects: 100% (684/684), 728.54 KiB | 5.44 MiB/s, done.
Resolving deltas: 100% (241/241), done.
keviindranr@ubuntu:~$ cd material-applications/example-backend/
keviindranr@ubuntu:~/material-applications/example-backend$ sudo nano Dockerfile
[sudo] password for keviindranr:
keviindranr@ubuntu:~/material-applications/example-backend$ docker build -t example-backend .
Sending build context to Docker daemon   42.5kB
Step 1/7 : FROM golang:1.16
 ---> 972d8c0bc0fc
Step 2/7 : WORKDIR /usr/src/app
 ---> Using cache
 ---> 227af17aa38f
Step 3/7 : EXPOSE 8080
 ---> Using cache
 ---> 75b3efc1383a
Step 4/7 : COPY . .
 ---> Using cache
 ---> d206bd77e9d0
Step 5/7 : RUN go build
 ---> Using cache
 ---> a36d1022d02b
Step 6/7 : RUN go test ./...
 ---> Using cache
 ---> 40b3dc217440
Step 7/7 : CMD ["./server"]
 ---> Using cache
 ---> d56c2b32f704
Successfully built d56c2b32f704
Successfully tagged example-backend:latest
keviindranr@ubuntu:~/material-applications/example-backend$ docker run -p 8080:8080 example-backend
[Ex 2.4+] REDIS_HOST env was not passed so redis connection is not initialized
[Ex 2.6+] POSTGRES_HOST env was not passed so postgres connection is not initialized
[GIN-debug] [WARNING] Creating an Engine instance with the Logger and Recovery middleware already attached.

[GIN-debug] [WARNING] Running in "debug" mode. Switch to "release" mode in production.
 - using env:   export GIN_MODE=release
 - using code:  gin.SetMode(gin.ReleaseMode)

[GIN-debug] GET    /ping                     --> server/router.pingpong (4 handlers)
[GIN-debug] GET    /messages                 --> server/controller.GetMessages (4 handlers)
[GIN-debug] POST   /messages                 --> server/controller.CreateMessage (4 handlers)
[GIN-debug] Listening and serving HTTP on :8080
```
