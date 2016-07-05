docker-machine -D create \
  --driver amazonec2 \
  --amazonec2-ami ami-ce9087a4 \
  --amazonec2-instance-type m4.large \
  --amazonec2-vpc-id $AWS_VPC_ID \
  --amazonec2-region us-east-1 \
  --amazonec2-root-size 40 \
  --amazonec2-security-group $SECURITY_GROUP \
  --amazonec2-ssh-keypath $SSH_KEY_PATH \
  --amazonec2-subnet-id $AWS_SUBNET_ID \
  --amazonec2-zone c \
  test-basic-cluster-4
