FROM docker

WORKDIR /usr/src/app

RUN apk update && apk add bash git

COPY . .

ENTRYPOINT [ "./builder.sh" ]
