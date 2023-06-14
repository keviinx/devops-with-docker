### Frontend before

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

### Frontend after

Size: 469.75MB

```console
keviindranr@ubuntu:~$ docker image history material-applications-frontend
IMAGE          CREATED         CREATED BY                                      SIZE      COMMENT
10548c60b4ee   2 minutes ago   CMD ["serve" "-s" "-l" "5000" "build"]          0B        buildkit.dockerfile.v0
<missing>      2 minutes ago   USER appuser                                    0B        buildkit.dockerfile.v0
<missing>      2 minutes ago   ENV REACT_APP_BACKEND_URL=http://localhost/a…   0B        buildkit.dockerfile.v0
<missing>      2 minutes ago   RUN /bin/sh -c npm install &&     npm run bu…   352MB     buildkit.dockerfile.v0
<missing>      4 minutes ago   COPY . . # buildkit                             724kB     buildkit.dockerfile.v0
<missing>      4 minutes ago   EXPOSE map[5000/tcp:{}]                         0B        buildkit.dockerfile.v0
<missing>      4 minutes ago   WORKDIR /usr/src/app                            0B        buildkit.dockerfile.v0
<missing>      10 days ago     /bin/sh -c #(nop)  CMD ["node"]                 0B
<missing>      10 days ago     /bin/sh -c #(nop)  ENTRYPOINT ["docker-entry…   0B
<missing>      10 days ago     /bin/sh -c #(nop) COPY file:4d192565a7220e13…   388B
<missing>      10 days ago     /bin/sh -c apk add --no-cache --virtual .bui…   7.76MB
<missing>      10 days ago     /bin/sh -c #(nop)  ENV YARN_VERSION=1.22.19     0B
<missing>      10 days ago     /bin/sh -c addgroup -g 1000 node     && addu…   102MB
<missing>      10 days ago     /bin/sh -c #(nop)  ENV NODE_VERSION=16.20.0     0B
<missing>      5 weeks ago     /bin/sh -c #(nop)  CMD ["/bin/sh"]              0B
<missing>      5 weeks ago     /bin/sh -c #(nop) ADD file:7625ddfd589fb824e…   7.33MB
```

### Backend before

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

### Backend after

Size: 495.98MB

```console
keviindranr@ubuntu:~$ docker image history material-applications-backend
IMAGE          CREATED         CREATED BY                                      SIZE      COMMENT
1174779cb44f   5 minutes ago   CMD ["./server"]                                0B        buildkit.dockerfile.v0
<missing>      5 minutes ago   USER appuser                                    0B        buildkit.dockerfile.v0
<missing>      5 minutes ago   ENV REQUEST_ORIGIN=http://localhost             0B        buildkit.dockerfile.v0
<missing>      5 minutes ago   RUN /bin/sh -c go build &&     go test ./...…   241MB     buildkit.dockerfile.v0
<missing>      6 minutes ago   COPY . . # buildkit                             28.9kB    buildkit.dockerfile.v0
<missing>      6 minutes ago   EXPOSE map[8080/tcp:{}]                         0B        buildkit.dockerfile.v0
<missing>      6 minutes ago   WORKDIR /usr/src/app                            0B        buildkit.dockerfile.v0
<missing>      8 days ago      /bin/sh -c #(nop) WORKDIR /go                   0B
<missing>      8 days ago      /bin/sh -c mkdir -p "$GOPATH/src" "$GOPATH/b…   0B
<missing>      8 days ago      /bin/sh -c #(nop)  ENV PATH=/go/bin:/usr/loc…   0B
<missing>      8 days ago      /bin/sh -c #(nop)  ENV GOPATH=/go               0B
<missing>      8 days ago      /bin/sh -c set -eux;  apk add --no-cache --v…   247MB
<missing>      8 days ago      /bin/sh -c #(nop)  ENV GOLANG_VERSION=1.20.5    0B
<missing>      4 weeks ago     /bin/sh -c #(nop)  ENV PATH=/usr/local/go/bi…   0B
<missing>      5 weeks ago     /bin/sh -c apk add --no-cache ca-certificates   516kB
<missing>      5 weeks ago     /bin/sh -c #(nop)  CMD ["/bin/sh"]              0B
<missing>      5 weeks ago     /bin/sh -c #(nop) ADD file:7625ddfd589fb824e…   7.33MB
```
