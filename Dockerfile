FROM golang:1.9.6 as BUILDER

WORKDIR /app
COPY math.go .
COPY go.mod .

RUN go build -o math .


# FROM golang:1.9-alpine

# para otimizar mais ainda a imagem, sem a necessidade de todo o ambiente GO.
FROM scratch

COPY --from=BUILDER /app/math ./math

CMD ["./math"]