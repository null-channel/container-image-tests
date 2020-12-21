FROM golang:latest as base

WORKDIR /app

COPY . .

RUN go build -o main .

EXPOSE 8080

CMD ["./main"]

FROM scratch
COPY --from=base /app/main /main
CMD ["./main"]