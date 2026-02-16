#!/bin/bash
# Script responsável por criar uma instância EC2
# Utiliza variáveis definidas no arquivo 01-variaveis.sh

source ./scripts/01-variaveis.sh

aws ec2 run-instances \
  --image-id $AMI_ID \
  --instance-type t3.micro \
  --key-name $KEY_NAME \
  --security-group-ids $SG_ID \
  --subnet-id $SUBNET_ID
