FROM golang:latest as base

WORKDIR /app

COPY . .

RUN CGO_ENABLED=0 go build -o main .

EXPOSE 8080

CMD ["./main"]

FROM scratch
WORKDIR /root/
COPY --from=base /app/main .
ENTRYPOINT [ "./main" ]