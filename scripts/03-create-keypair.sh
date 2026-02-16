#!/bin/bash

aws ec2 create-key-pair \
--key-name "$KEY_NAME" \
--query 'KeyMaterial' \
--output text > "$KEY_NAME.pem"

chmod 400 "$KEY_NAME.pem"

echo "Key criada."
