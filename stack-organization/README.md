# Organize your CloudFormation stacks by lifecycle and organization

Create the stack with the command:
```sh
aws cloudformation create-stack --stack-name master-organization --template-body file://master-stack.yaml
```

Remove the stack with the command:
```sh
aws cloudformation delete-stack --stack-name master-organization
```
