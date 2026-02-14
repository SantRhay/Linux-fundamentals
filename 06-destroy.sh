#!/bin/bash

aws ec2 terminate-instances --instance-ids "$1"

echo "Instância encerrada."
