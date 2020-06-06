# Use Stack Policies

### AWS Best Practice Reference
[Use Stack Policies](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/best-practices.html#stackpolicy)

## Example Code Instructions

### Create the stack policy example

Create the stack with the command:
```sh
aws cloudformation create-stack \
  --stack-name stack-policy-example \
  --template-body file://stack.yaml \
  --stack-policy-body file://policy.json
```

Try to update with this command:
```sh
aws cloudformation update-stack \
  --stack-name stack-policy-example \
  --template-body file://stack-update.yaml
```

Check the events in the AWS console, you'll see the update was denied.

## Removal

Remove the stack policy example stack with the command:
```sh
aws cloudformation delete-stack \
  --stack-name stack-policy-example
```