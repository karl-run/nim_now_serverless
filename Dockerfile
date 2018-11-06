FROM nimlang/nim:alpine as base
WORKDIR /usr/src
COPY now_nim_serverless.nimble /usr/src/
COPY src /usr/src/src
RUN nimble install

FROM alpine:3.8
WORKDIR /usr/src
COPY --from=base /usr/src .
CMD ["./now_nim_serverless"]
