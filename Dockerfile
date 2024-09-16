FROM golang:latest

WORKDIR /app

COPY . .

RUN go build -o /app/ash .

RUN ls

EXPOSE 3002

CMD ["/app/ash"]