FROM golang:1.16-alpine
WORKDIR /app
COPY echo-serv/ .
RUN go mod init c10k-go
RUN go get github.com/uniqush/log
RUN go build -o main .
CMD ["./main"]
EXPOSE 8080