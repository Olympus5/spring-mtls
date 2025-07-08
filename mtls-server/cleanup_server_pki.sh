#!/bin/bash

set -e

rm -f ca.olympus5.bzh.crt \
  ca.olympus5.bzh.key \
  server.olympus5.bzh.csr \
  server.olympus5.bzh.crt \
  server.olympus5.bzh.key \
  server.p12 \
  serial \
  index.txt \
  index.txt.attr \
  certs/*.pem \
  src/main/resources/server.jks
mv serial.old serial
mv index.txt.old index.txt