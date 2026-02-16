#!/bin/bash

source 01-variables.sh

echo "Buscando Security Group ID..."

SG_ID=$(aws ec2 describe-security-groups \
--filters "Name=group-name,Values=$SG_NAME" \
--query "SecurityGroups[0].GroupId" \
--output text)

echo "Buscando VPC do Security Group..."

VPC_ID=$(aws ec2 describe-security-groups \
--group-ids $SG_ID \
--query "SecurityGroups[0].VpcId" \
--output text)

echo "Buscando Subnet da mesma VPC..."

SUBNET_ID=$(aws ec2 describe-subnets \
--filters "Name=vpc-id,Values=$VPC_ID" \
--query "Subnets[0].SubnetId" \
--output text)

echo "Criando instância EC2..."

aws ec2 run-instances \
--image-id $AMI_ID \
--count 1 \
--instance-type $INSTANCE_TYPE \
--key-name $KEY_NAME \
--security-group-ids $SG_ID \
--subnet-id $SUBNET_ID \
--associate-public-ip-address \
--query "Instances[0].InstanceId" \
--output text

echo "Instância criada com sucesso!"

