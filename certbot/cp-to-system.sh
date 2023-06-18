#!/bin/bash -xe
LE_LIVE_CERT_DIR=/path/to/live/husker.mikesoh.com
SYSTEM_CERT_DIR=/etc/postfix/certs/

set -xe

echo "Copying certificates to postfix certs"
cp ${LE_LIVE_CERT_DIR}/{fullchain.pem,privkey.pem} ${SYSTEM_CERT_DIR}

/usr/bin/openssl x509 -noout -text -in ${SYSTEM_CERT_DIR}/fullchain.pem

systemctl restart postfix
systemctl restart dovecot