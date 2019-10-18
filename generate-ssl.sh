#!/usr/bin/env bash

if ! which mkcert >/dev/null ; then
    echo "mkcert is not on your path (https://github.com/FiloSottile/mkcert)"
    exit 1
fi

CURRENT_DIR="$(pwd)"
SSL_DIR="$(dirname $0)/ssl"

cd "${SSL_DIR}"
mkcert -install
mkcert -cert-file server.crt \
       -key-file server.key \
       localhost 127.0.0.1 ::1
cd "${CURRENT_DIR}"