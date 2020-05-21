# Organize your CloudFormation stacks by lifecycle and organization

### AWS Best Practice Reference
[Organize Your Stacks By Lifecycle and Ownership](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/best-practices.html#organizingstacks)

## Example Code Instructions

### Create the mono-stack

```sh
aws cloudformation create-stack \
  --stack-name mono-stack-example \
  --template-body file://master-stack.yaml
```

### Create the better organized stacks

**Note: You must remove the above `mono-stack-example` before creating the below stacks.

```sh
aws cloudformation create-stack \
  --stack-name hbfl-stack-example \
  --template-body file://hbfl-stack.yaml
```

```sh
aws cloudformation create-stack \
  --stack-name tpb-stack-example \
  --template-body file://tpb-stack.yaml
```

## Removal

Remove the mono-stack with the command:
```sh
aws cloudformation delete-stack \
  --stack-name mono-stack-example
```

Then, remove the hbfl stack with this command:
```sh
aws cloudformation delete-stack \
  --stack-name hbfl-stack-example
```

And, remove the tpb stack with this command:
```sh
aws cloudformation delete-stack \
  --stack-name tpb-stack-example
```