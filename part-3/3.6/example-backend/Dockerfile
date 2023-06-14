FROM golang:1.16

WORKDIR /usr/src/app

EXPOSE 8080

COPY . .

RUN go build && \
    go test ./... && \
    adduser --disabled-password appuser && \
    rm -rf /usr/local/go

ENV REQUEST_ORIGIN=http://localhost

USER appuser

CMD ["./server"]
