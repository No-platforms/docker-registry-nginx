#!/bin/sh

# Generate SSL files if they don't exist yet.
if [ ! -f "/app/server.key" ] || [ ! -f "/app/server.crt" ]; then
    openssl req -x509 \
        -newkey rsa:2048 \
        -nodes \
        -keyout /app/server.key \
        -out /app/server.crt \
        -subj "/C=IR/ST=Tehran/L=Tehran/O=Respina/OU=Respina/CN=ZoodPack"
fi
ls -la /app
exit