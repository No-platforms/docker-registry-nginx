FROM alpine:latest
RUN apk add openssl
WORKDIR /app
COPY dockers/openssl/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]