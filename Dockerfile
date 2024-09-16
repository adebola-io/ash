FROM golang:1.19-alpine AS builder

WORKDIR /app

COPY . .

RUN go build -o /app/ash .

FROM alpine:latest

WORKDIR /app

COPY --from=builder /app/ash /app/ash

EXPOSE 8080

CMD ["/app/ash"]