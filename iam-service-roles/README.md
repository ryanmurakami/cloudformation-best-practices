# Use IAM Service Roles for CloudFormation permissions

### AWS Best Practice Reference
[Use IAM to Control Access](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/best-practices.html#use-iam-to-control-access)

## Example Code Instructions
Create an IAM role with only these permissions:
- `dynamodb:CreateTable`
- `dynamodb:DescribeTable`

Get the role ARN

Create the stack with the command:
```sh
aws cloudformation create-stack \
  --stack-name iam-service-roles \
  --template-body file://stack.yaml \
  --role-arn "<insert iam role arn>"
```

Remove the stack with the command:
```sh
aws cloudformation delete-stack \
  --stack-name iam-service-roles
```

Create the IAM service role example with this command:
```sh
aws cloudformation create-stack \
  --stack-name service-role \
  --template-body file://service-role.yaml \
  --capabilities CAPABILITY_NAMED_IAM
```