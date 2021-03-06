#!/bin/sh

if type apt >/dev/null; then
  apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates &&
    rm -rf /var/lib/apt/lists/*
fi

if type apk >/dev/null; then
  apk update
  apk add --no-cache ca-certificates openssl iproute2 bash
  update-ca-certificates --fresh
fi
