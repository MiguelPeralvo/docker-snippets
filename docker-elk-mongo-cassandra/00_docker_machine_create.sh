#!/bin/sh

MACHINE_NAME=${1:-test-basic-cluster8}

docker-machine -D create \
  --driver amazonec2 \
  --amazonec2-ami ami-ce9087a4 \
  --amazonec2-access-key $AWS_ACCESS_KEY_ID \
  --amazonec2-secret-key $AWS_SECRET_ACCESS_KEY \
  --amazonec2-instance-type m4.large \
  --amazonec2-vpc-id $AWS_VPC_ID \
  --amazonec2-region us-east-1 \
  --amazonec2-root-size 40 \
  --amazonec2-security-group $SECURITY_GROUP \
  --amazonec2-ssh-keypath $SSH_KEY_PATH \
  --amazonec2-subnet-id $AWS_SUBNET_ID \
  --amazonec2-zone c \
  $MACHINE_NAME

