#!/bin/bash
# This script initializes the server PKI for mTLS.
set -e

openssl req -x509 -config ./openssl-ca.cnf -days 365 -out ca.olympus5.bzh.crt
openssl req -new -config ./openssl-server.cnf -days 365 -out server.olympus5.bzh.csr
openssl ca -batch -config ./openssl-ca.cnf -out server.olympus5.bzh.crt -in server.olympus5.bzh.csr
openssl pkcs12 -export -in server.olympus5.bzh.crt -inkey server.olympus5.bzh.key -passin pass:azerty -out server.p12 -name "server.olympus5.bzh" -passout pass:azerty
keytool -importkeystore -srckeystore server.p12 -srcstoretype pkcs12 -destkeystore ./src/main/resources/server.jks -deststoretype JKS -srcstorepass azerty -deststorepass azerty -alias server.olympus5.bzh