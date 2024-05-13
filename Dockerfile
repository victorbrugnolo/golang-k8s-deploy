FROM golang:latest

WORKDIR /app

COPY . .

RUN GOOS=linux go build -ldflags="-w -s" -o server .
CMD ["./server"]