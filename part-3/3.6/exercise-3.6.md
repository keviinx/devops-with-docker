### Frontend before

Size: 611.08MB

```console
keviindranr@ubuntu:~$ docker image history material-applications-frontend
IMAGE          CREATED       CREATED BY                                      SIZE      COMMENT
2ba6ce6f77ae   2 hours ago   CMD ["serve" "-s" "-l" "5000" "build"]          0B        buildkit.dockerfile.v0
<missing>      2 hours ago   USER appuser                                    0B        buildkit.dockerfile.v0
<missing>      2 hours ago   RUN /bin/sh -c adduser --disabled-password a…   334kB     buildkit.dockerfile.v0
<missing>      5 days ago    RUN /bin/sh -c npm install -g serve # buildk…   6.43MB    buildkit.dockerfile.v0
<missing>      5 days ago    RUN /bin/sh -c npm run build # buildkit         8.68MB    buildkit.dockerfile.v0
<missing>      5 days ago    ENV REACT_APP_BACKEND_URL=http://localhost/a…   0B        buildkit.dockerfile.v0
<missing>      5 days ago    RUN /bin/sh -c npm install # buildkit           336MB     buildkit.dockerfile.v0
<missing>      5 days ago    COPY . . # buildkit                             724kB     buildkit.dockerfile.v0
<missing>      5 days ago    RUN /bin/sh -c apt-get install -y nodejs # b…   98MB      buildkit.dockerfile.v0
<missing>      5 days ago    RUN /bin/sh -c curl -sL https://deb.nodesour…   35.6MB    buildkit.dockerfile.v0
<missing>      5 days ago    RUN /bin/sh -c apt-get update && apt-get ins…   47MB      buildkit.dockerfile.v0
<missing>      5 days ago    EXPOSE map[5000/tcp:{}]                         0B        buildkit.dockerfile.v0
<missing>      5 days ago    WORKDIR /usr/src/app                            0B        buildkit.dockerfile.v0
<missing>      3 weeks ago   /bin/sh -c #(nop)  CMD ["/bin/bash"]            0B
<missing>      3 weeks ago   /bin/sh -c #(nop) ADD file:2fd2684e989d275c9…   77.8MB
<missing>      3 weeks ago   /bin/sh -c #(nop)  LABEL org.opencontainers.…   0B
<missing>      3 weeks ago   /bin/sh -c #(nop)  LABEL org.opencontainers.…   0B
<missing>      3 weeks ago   /bin/sh -c #(nop)  ARG LAUNCHPAD_BUILD_ARCH     0B
<missing>      3 weeks ago   /bin/sh -c #(nop)  ARG RELEASE                  0B
```

### Frontend after

Size: 568.4MB

```console
keviindranr@ubuntu:~$ docker image history material-applications-frontend
IMAGE          CREATED         CREATED BY                                      SIZE      COMMENT
6f16b527f722   2 minutes ago   CMD ["serve" "-s" "-l" "5000" "build"]          0B        buildkit.dockerfile.v0
<missing>      2 minutes ago   USER appuser                                    0B        buildkit.dockerfile.v0
<missing>      2 minutes ago   RUN /bin/sh -c apt-get update && apt-get ins…   490MB     buildkit.dockerfile.v0
<missing>      5 minutes ago   ENV REACT_APP_BACKEND_URL=http://localhost/a…   0B        buildkit.dockerfile.v0
<missing>      5 minutes ago   COPY . . # buildkit                             724kB     buildkit.dockerfile.v0
<missing>      5 minutes ago   EXPOSE map[5000/tcp:{}]                         0B        buildkit.dockerfile.v0
<missing>      5 days ago      WORKDIR /usr/src/app                            0B        buildkit.dockerfile.v0
<missing>      3 weeks ago     /bin/sh -c #(nop)  CMD ["/bin/bash"]            0B
<missing>      3 weeks ago     /bin/sh -c #(nop) ADD file:2fd2684e989d275c9…   77.8MB
<missing>      3 weeks ago     /bin/sh -c #(nop)  LABEL org.opencontainers.…   0B
<missing>      3 weeks ago     /bin/sh -c #(nop)  LABEL org.opencontainers.…   0B
<missing>      3 weeks ago     /bin/sh -c #(nop)  ARG LAUNCHPAD_BUILD_ARCH     0B
<missing>      3 weeks ago     /bin/sh -c #(nop)  ARG RELEASE                  0B
```

### Backend before

Size: 1.06GB

```console
keviindranr@ubuntu:~$ docker image history material-applications-backend
IMAGE          CREATED         CREATED BY                                      SIZE      COMMENT
f22eaa790d4b   2 hours ago     CMD ["./server"]                                0B        buildkit.dockerfile.v0
<missing>      2 hours ago     USER appuser                                    0B        buildkit.dockerfile.v0
<missing>      2 hours ago     RUN /bin/sh -c adduser --disabled-password a…   334kB     buildkit.dockerfile.v0
<missing>      5 days ago      ENV REQUEST_ORIGIN=http://localhost             0B        buildkit.dockerfile.v0
<missing>      5 days ago      RUN /bin/sh -c go test ./... # buildkit         238kB     buildkit.dockerfile.v0
<missing>      5 days ago      RUN /bin/sh -c go build # buildkit              146MB     buildkit.dockerfile.v0
<missing>      5 days ago      COPY . . # buildkit                             28.9kB    buildkit.dockerfile.v0
<missing>      5 days ago      EXPOSE map[8080/tcp:{}]                         0B        buildkit.dockerfile.v0
<missing>      5 weeks ago     WORKDIR /usr/src/app                            0B        buildkit.dockerfile.v0
<missing>      15 months ago   /bin/sh -c #(nop) WORKDIR /go                   0B
<missing>      15 months ago   /bin/sh -c mkdir -p "$GOPATH/src" "$GOPATH/b…   0B
<missing>      15 months ago   /bin/sh -c #(nop)  ENV PATH=/go/bin:/usr/loc…   0B
<missing>      15 months ago   /bin/sh -c #(nop)  ENV GOPATH=/go               0B
<missing>      15 months ago   /bin/sh -c set -eux;  arch="$(dpkg --print-a…   387MB
<missing>      15 months ago   /bin/sh -c #(nop)  ENV GOLANG_VERSION=1.16.15   0B
<missing>      15 months ago   /bin/sh -c #(nop)  ENV PATH=/usr/local/go/bi…   0B
<missing>      15 months ago   /bin/sh -c set -eux;  apt-get update;  apt-g…   227MB
<missing>      15 months ago   /bin/sh -c apt-get update && apt-get install…   152MB
<missing>      15 months ago   /bin/sh -c set -ex;  if ! command -v gpg > /…   18.9MB
<missing>      15 months ago   /bin/sh -c set -eux;  apt-get update;  apt-g…   10.7MB
<missing>      15 months ago   /bin/sh -c #(nop)  CMD ["bash"]                 0B
<missing>      15 months ago   /bin/sh -c #(nop) ADD file:9c4db2a9644ee3029…   124MB
```

### Backend after

Size: 1.06GB

```console
keviindranr@ubuntu:~$ docker image history material-applications-backend
IMAGE          CREATED         CREATED BY                                      SIZE      COMMENT
a07ed29eeef9   7 minutes ago   CMD ["./server"]                                0B        buildkit.dockerfile.v0
<missing>      7 minutes ago   USER appuser                                    0B        buildkit.dockerfile.v0
<missing>      7 minutes ago   ENV REQUEST_ORIGIN=http://localhost             0B        buildkit.dockerfile.v0
<missing>      7 minutes ago   RUN /bin/sh -c go build &&     go test ./...…   146MB     buildkit.dockerfile.v0
<missing>      5 days ago      COPY . . # buildkit                             28.9kB    buildkit.dockerfile.v0
<missing>      5 days ago      EXPOSE map[8080/tcp:{}]                         0B        buildkit.dockerfile.v0
<missing>      5 weeks ago     WORKDIR /usr/src/app                            0B        buildkit.dockerfile.v0
<missing>      15 months ago   /bin/sh -c #(nop) WORKDIR /go                   0B
<missing>      15 months ago   /bin/sh -c mkdir -p "$GOPATH/src" "$GOPATH/b…   0B
<missing>      15 months ago   /bin/sh -c #(nop)  ENV PATH=/go/bin:/usr/loc…   0B
<missing>      15 months ago   /bin/sh -c #(nop)  ENV GOPATH=/go               0B
<missing>      15 months ago   /bin/sh -c set -eux;  arch="$(dpkg --print-a…   387MB
<missing>      15 months ago   /bin/sh -c #(nop)  ENV GOLANG_VERSION=1.16.15   0B
<missing>      15 months ago   /bin/sh -c #(nop)  ENV PATH=/usr/local/go/bi…   0B
<missing>      15 months ago   /bin/sh -c set -eux;  apt-get update;  apt-g…   227MB
<missing>      15 months ago   /bin/sh -c apt-get update && apt-get install…   152MB
<missing>      15 months ago   /bin/sh -c set -ex;  if ! command -v gpg > /…   18.9MB
<missing>      15 months ago   /bin/sh -c set -eux;  apt-get update;  apt-g…   10.7MB
<missing>      15 months ago   /bin/sh -c #(nop)  CMD ["bash"]                 0B
<missing>      15 months ago   /bin/sh -c #(nop) ADD file:9c4db2a9644ee3029…   124MB
```
