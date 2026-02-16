#!/bin/bash

VPC_ID=$(aws ec2 describe-vpcs \
--query 'Vpcs[0].VpcId' \
--output text)

SG_ID=$(aws ec2 create-security-group \
--group-name "$SG_NAME" \
--description "Security Group DevOps Lab" \
--vpc-id "$VPC_ID" \
--query 'GroupId' \
--output text)

aws ec2 authorize-security-group-ingress \
--group-id "$SG_ID" \
--protocol tcp \
--port 22 \
--cidr 0.0.0.0/0

echo "Security Group criado: $SG_ID"
