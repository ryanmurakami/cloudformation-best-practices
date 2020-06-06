# Share Cross-Stack Output Values

### AWS Best Practice Reference
[Use Cross-Stack References to Export Shared Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/best-practices.html#cross-stack)

## Example Code Instructions

### Create both stacks

Create the VPC stack with the command:
```sh
aws cloudformation create-stack \
  --stack-name example-vpc \
  --template-body file://vpc.yaml \
  --parameters file://parameters-vpc.json
```

Wait until the VPC stack is completed.

Create the EB stack with the command:
```sh
aws cloudformation create-stack \
  --stack-name example-eb \
  --template-body file://eb.yaml \
  --capabilities CAPABILITY_IAM \
  --parameters file://parameters-eb.json
```

## Removal

Remove the EB stack with the command:
```sh
aws cloudformation delete-stack \
  --stack-name example-eb
```

Then, remove VPC stack with this command:
```sh
aws cloudformation delete-stack \
  --stack-name example-vpc
```