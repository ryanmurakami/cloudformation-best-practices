# Reuse CloudFormation Templates

Create the stack with the command:
```sh
aws cloudformation create-stack --stack-name master-organization --template-body file://master-stack.yaml
```

Remove the stack with the command:
```sh
aws cloudformation delete-stack --stack-name master-organization
```
