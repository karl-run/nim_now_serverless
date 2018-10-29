FROM nimlang/nim:alpine as base
WORKDIR /usr/src
COPY now_nim_serverless.nimble /usr/src/
COPY src /usr/src/src
RUN ls -alll
RUN nimble install

FROM alpine:3.7
WORKDIR /usr/src
COPY --from=base /usr/src .
CMD ["./now_nim_serverless"]
