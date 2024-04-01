FROM alpine:3.19

WORKDIR /app
ENV HOME=/config

RUN apk update && \
    apk add mktorrent

COPY pollenizer /app/
RUN chmod +x /app/pollenizer

ENTRYPOINT ["/bin/sh", "-c"]