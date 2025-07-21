#!/bin/bash
# This script cleans up the client PKI for mTLS.
set -e

rm -f ca.olympus5.org.crt \
  ca.olympus5.org.key \
  client.olympus5.org.csr \
  client.olympus5.org.crt \
  client.olympus5.org.key \
  client.p12 \
  serial \
  index.txt \
  index.txt.attr \
  certs/*.pem \
  src/main/resources/client.jks
mv serial.old serial
mv index.txt.old index.txt