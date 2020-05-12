# Reuse CloudFormation Templates

### AWS Best Practice Reference
[Reuse Templates to Replicate Stacks in Multiple Environments](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/best-practices.html#reuse)

## Example Code Instructions
Create the stack with the command:
```sh
aws cloudformation create-stack --stack-name master-organization --template-body file://master-stack.yaml
```

Remove the stack with the command:
```sh
aws cloudformation delete-stack --stack-name master-organization
```
