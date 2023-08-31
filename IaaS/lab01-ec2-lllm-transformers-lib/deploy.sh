STACK_NAME=llm-workshop-lab01
aws cloudformation deploy --template-file template.yaml --stack-name $STACK_NAME --capabilities CAPABILITY_IAM
KEYPAIRNAME=$(aws cloudformation describe-stacks --stack-name $STACK_NAME --query "Stacks[0].Outputs[?ExportName=='LLLMEC2KeyPairID'].OutputValue" --output text)
echo "The key pair name is $KEYPAIRNAME"
KEYPAIRID=$(aws ec2 describe-key-pairs --filters Name=key-name,Values=$KEYPAIRNAME --query KeyPairs[*].KeyPairId --output text)
echo "The key pair ID is $KEYPAIRID"
aws ssm get-parameter --name /ec2/keypair/$KEYPAIRID --with-decryption --query Parameter.Value --output text > $KEYPAIRNAME.pem
chmod 400 ./$KEYPAIRNAME.pem

echo "You can now connect to the EC2 instance using the following command:"
echo "ssh -i $KEYPAIRNAME.pem ec2-user@$(aws cloudformation describe-stacks --stack-name $STACK_NAME --query "Stacks[0].Outputs[?ExportName=='EC2PublicDnsName'].OutputValue" --output text)"