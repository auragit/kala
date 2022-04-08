FROM golang

WORKDIR /go/src/github.com/ajvb/kala
COPY . .
RUN go build && mv kala /usr/bin

RUN mkdir /var/boltdb/

CMD ["kala", "serve", "--bolt-path=/var/boltdb"]
EXPOSE 8000
