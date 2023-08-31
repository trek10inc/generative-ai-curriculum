STACK_NAME=llm-workshop-lab01
KEYPAIRNAME=$(aws cloudformation describe-stacks --stack-name $STACK_NAME --query "Stacks[0].Outputs[?ExportName=='LLLMEC2KeyPairID'].OutputValue" --output text)
# delete stack and wait for deletion to finish
aws cloudformation delete-stack --stack-name $STACK_NAME
aws cloudformation wait stack-delete-complete --stack-name $STACK_NAME
# delete local key pair
rm -f ./$KEYPAIRNAME.pem