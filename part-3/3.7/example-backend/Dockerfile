FROM golang:alpine

WORKDIR /usr/src/app

EXPOSE 8080

COPY . .

RUN go build && \
    go test ./... && \
    adduser --disabled-password appuser && \
    rm -rf /etc/apk/repositories

ENV REQUEST_ORIGIN=http://localhost

USER appuser

CMD ["./server"]
