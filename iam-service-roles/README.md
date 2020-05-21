# Use IAM Service Roles for CloudFormation permissions

### AWS Best Practice Reference
[Use IAM to Control Access](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/best-practices.html#use-iam-to-control-access)

## Example Code Instructions

### Create an IAM service role
Create an IAM role with only these permissions:
- `dynamodb:CreateTable`
- `dynamodb:DescribeTable`

Or

Create the IAM service role example with this command:
```sh
aws cloudformation create-stack \
  --stack-name service-role \
  --template-body file://service-role.yaml \
  --capabilities CAPABILITY_NAMED_IAM
```

### Create the stack with the service role

Get the role ARN

Create the stack with the command:
```sh
aws cloudformation create-stack \
  --stack-name iam-service-roles \
  --template-body file://stack.yaml \
  --role-arn "<insert iam role arn>"
```

## Removal

Remove the example stack with the command:
```sh
aws cloudformation delete-stack \
  --stack-name iam-service-roles
```

Then, remove the role stack with this command:
```sh
aws cloudformation delete-stack \
  --stack-name service-role
```