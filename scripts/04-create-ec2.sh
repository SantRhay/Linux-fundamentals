#!/bin/bash

echo "Iniciando criação da instância EC2..."

# Carrega variáveis
source ./scripts/01-variables.sh

# Cria instância e captura Instance ID
INSTANCE_ID=$(aws ec2 run-instances \
  --image-id $AMI_ID \
  --instance-type $INSTANCE_TYPE \
  --key-name $KEY_NAME \
  --security-group-ids $SG_ID \
  --subnet-id $SUBNET_ID \
  --region $REGION \
  --user-data file://scripts/user-data.sh \
  --query "Instances[0].InstanceId" \
  --output text)

if [ -z "$INSTANCE_ID" ]; then
  echo "Erro ao criar instância."
  exit 1
fi

echo "Instância criada com ID: $INSTANCE_ID"

# Salva Instance ID em arquivo
echo "export INSTANCE_ID=$INSTANCE_ID" > scripts/instance.env

echo "Aguardando instância ficar disponível..."
aws ec2 wait instance-running \
  --instance-ids $INSTANCE_ID \
  --region $REGION

# Captura IP público
PUBLIC_IP=$(aws ec2 describe-instances \
  --instance-ids $INSTANCE_ID \
  --region $REGION \
  --query "Reservations[0].Instances[0].PublicIpAddress" \
  --output text)

echo "Instância rodando!"
echo "IP Público: $PUBLIC_IP"
