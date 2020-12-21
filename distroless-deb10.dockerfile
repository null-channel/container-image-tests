FROM golang:latest as base

WORKDIR /app

COPY . .

RUN go build -o main .

EXPOSE 8080

CMD ["./main"]

FROM gcr.io/distroless/base-debian10
COPY --from=base /app/main /
CMD ["./main"]
