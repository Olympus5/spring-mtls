#!/bin/bash
# This script initializes the client PKI for mTLS.
set -e

openssl req -x509 -config ./openssl-ca.cnf -days 365 -out ca.olympus5.org.crt
openssl req -new -config ./openssl-client.cnf -days 365 -out client.olympus5.org.csr
openssl ca -batch -config ./openssl-ca.cnf -out client.olympus5.org.crt -in client.olympus5.org.csr -extensions signing_req
openssl pkcs12 -export -in client.olympus5.org.crt -inkey client.olympus5.org.key -passin pass:azerty -out client.p12 -name "client.olympus5.org" -passout pass:azerty
keytool -importkeystore -srckeystore client.p12 -srcstoretype pkcs12 -destkeystore ./src/main/resources/client.jks -deststoretype JKS -srcstorepass azerty -deststorepass azerty -alias client.olympus5.org