FROM alpine:latest

RUN apk add --no-cache jq httpie

ENTRYPOINT [ "http" ]
CMD [ "--help" ]
