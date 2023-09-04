BASE_STACK_NAME=llm-workshop-lab01

# get the first command line arg, error if not passed
if [ -z "$1" ]
  then
    echo "Please provide a unique name for your environment"
    echo "Usage: deploy.sh <unique-env-name>"
    exit 1
fi

ENV_NAME=$1
STACK_NAME=$BASE_STACK_NAME-$ENV_NAME

KEYPAIRNAME=$(aws cloudformation describe-stacks --stack-name $STACK_NAME --query "Stacks[0].Outputs[?ExportName=='LLLMEC2KeyPairID'].OutputValue" --output text)
# delete stack and wait for deletion to finish
aws cloudformation delete-stack --stack-name $STACK_NAME
aws cloudformation wait stack-delete-complete --stack-name $STACK_NAME
# delete local key pair
rm -f ./$KEYPAIRNAME.pem