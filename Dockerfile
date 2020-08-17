FROM golang:1.13
LABEL contacts="github.com/innovember" \
maintainer="indecember"

WORKDIR /go/src/ascii-art-web-dockerize
COPY . .

EXPOSE 8181

RUN go build -o main .

CMD ["./main"]
