# Use Change Sets when updating CloudFormation Stacks

### AWS Best Practice Reference
[Create Change Sets Before Updating Your Stacks](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/best-practices.html#cfn-best-practices-changesets)

## Example Code Instructions

### Create the stack policy example

Create the stack with the command:
```sh
aws cloudformation create-stack \
  --stack-name change-set-example \
  --template-body file://stack.yaml
```

Create a change set with this command:
```sh
aws cloudformation create-change-set \
  --stack-name change-set-example \
  --template-body file://stack-update.yaml \
  --change-set-name vpc-cidrblock-ec2-type
```

Execute the change set with this command:
```sh
aws cloudformation execute-change-set \
  --stack-name change-set-example \
  --change-set-name vpc-cidrblock-ec2-type
```

## Removal

Remove the stack policy example stack with the command:
```sh
aws cloudformation delete-stack \
  --stack-name change-set-example
```