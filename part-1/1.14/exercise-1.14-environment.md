```console
keviindranr@ubuntu:~/material-applications/example-frontend$ docker build -t example-frontend .
Sending build context to Docker daemon  729.1kB
Step 1/12 : FROM ubuntu
 ---> 08d22c0ceb15
Step 2/12 : WORKDIR /usr/src/app
 ---> Using cache
 ---> 351437b023a4
Step 3/12 : EXPOSE 5000
 ---> Using cache
 ---> bc7624880bc2
Step 4/12 : RUN apt-get update && apt-get install -y curl
 ---> Using cache
 ---> d1ceac348f33
Step 5/12 : RUN curl -sL https://deb.nodesource.com/setup_16.x | bash
 ---> Using cache
 ---> f92e0b7254c1
Step 6/12 : RUN apt-get install -y nodejs
 ---> Using cache
 ---> a3d3cd9a10e3
Step 7/12 : COPY . .
 ---> Using cache
 ---> 402a1dc0eeaf
Step 8/12 : RUN npm install
 ---> Using cache
 ---> 16385a9dd3e0
Step 9/12 : ENV REACT_APP_BACKEND_URL=http://localhost:8080
 ---> Running in f396571f7806
Removing intermediate container f396571f7806
 ---> a5e1b268c34d
Step 10/12 : RUN npm run build
 ---> Running in d2321f1725ce

> example-frontend@0.1.0 build
> react-scripts build

(node:26) [DEP0148] DeprecationWarning: Use of deprecated folder mapping "./" in the "exports" field module resolution of the package at /usr/src/app/node_modules/postcss-safe-parser/node_modules/postcss/package.json.
Update this package.json to use a subpath pattern like "./*".
(Use `node --trace-deprecation ...` to show where the warning was created)
Creating an optimized production build...
Browserslist: caniuse-lite is outdated. Please run:
npx browserslist@latest --update-db

Why you should do it regularly:
https://github.com/browserslist/browserslist#browsers-data-updating
Compiled successfully.

File sizes after gzip:

  77.24 KB  build/static/js/2.43ca3586.chunk.js
  1.81 KB   build/static/js/main.667b6e84.chunk.js
  781 B     build/static/js/runtime-main.223e45fb.js
  235 B     build/static/css/main.eaa5d75e.chunk.css

The project was built assuming it is hosted at /.
You can control this with the homepage field in your package.json.

The build folder is ready to be deployed.
You may serve it with a static server:

  npm install -g serve
  serve -s build

Find out more about deployment here:

  https://cra.link/deployment

Removing intermediate container d2321f1725ce
 ---> 824c8c873121
Step 11/12 : RUN npm install -g serve
 ---> Running in a63b9340ba97

added 89 packages, and audited 90 packages in 8s

24 packages are looking for funding
  run `npm fund` for details

found 0 vulnerabilities
Removing intermediate container a63b9340ba97
 ---> dd1273702a2d
Step 12/12 : CMD ["serve", "-s", "-l", "5000", "build"]
 ---> Running in 2743844c1dc6
Removing intermediate container 2743844c1dc6
 ---> c02ccf90e81c
Successfully built c02ccf90e81c
Successfully tagged example-frontend:latest
keviindranr@ubuntu:~/material-applications/example-frontend$ docker run -p 5000:5000 example-frontend
 INFO  Accepting connections at http://localhost:5000
keviindranr@ubuntu:~/material-applications/example-backend$ docker build -t example-backend .
Sending build context to Docker daemon   42.5kB
Step 1/8 : FROM golang:1.16
 ---> 972d8c0bc0fc
Step 2/8 : WORKDIR /usr/src/app
 ---> Using cache
 ---> 227af17aa38f
Step 3/8 : EXPOSE 8080
 ---> Using cache
 ---> 75b3efc1383a
Step 4/8 : COPY . .
 ---> Using cache
 ---> d206bd77e9d0
Step 5/8 : RUN go build
 ---> Using cache
 ---> a36d1022d02b
Step 6/8 : RUN go test ./...
 ---> Using cache
 ---> 40b3dc217440
Step 7/8 : ENV REQUEST_ORIGIN=http://localhost:5000
 ---> Using cache
 ---> 82d06725c489
Step 8/8 : CMD ["./server"]
 ---> Using cache
 ---> 273c451a3c2c
Successfully built 273c451a3c2c
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
