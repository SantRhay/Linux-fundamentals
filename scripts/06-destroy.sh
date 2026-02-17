#!/bin/bash

source ./scripts/01-variables.sh
source ./scripts/instance.env

aws ec2 terminate-instances \
  --instance-ids $INSTANCE_ID \
  --region $REGION

echo "Instância encerrada."
