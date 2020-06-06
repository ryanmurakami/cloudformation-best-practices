# Keep Your Resources from Drifting

### AWS Best Practice Reference
[Manage All Stack Resources Through AWS CloudFormation](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/best-practices.html#donttouch)

## Example Code Instructions

### Create an IAM service role

Create the instance example with this command:
```sh
aws cloudformation create-stack \
  --stack-name instance-example \
  --template-body file://stack.yaml
```

## Removal

Remove the example stack with the command:
```sh
aws cloudformation delete-stack \
  --stack-name instance-example
```
