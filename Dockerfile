FROM golang:latest as build

WORKDIR /usr/src/app

COPY . .

RUN go build -o /hello

FROM scratch

WORKDIR /

COPY --from=build /hello /hello

ENTRYPOINT [ "/hello" ]


