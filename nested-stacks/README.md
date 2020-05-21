# Use Nested Stacks

### AWS Best Practice Reference
[Use Nested Stacks to Reuse Common Template Patterns](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/best-practices.html#nested)

## Example Code Instructions

### Create an unnested stack

```sh
aws cloudformation create-stack \
  --stack-name unnested-stack-example \
  --template-body file://unnested.yaml
```

### Create a nested stack

**Note:** You should remove the previous stack before creating the ones below

**Also Note:** Replace the **4** instances of `<your_bucket_name>` below with a unique bucket name

First create an S3 bucket
```sh
aws s3 mb s3://<your_bucket_name>
```

Then upload the `eb.yaml` and `vpc.yaml` files
```sh
aws s3 cp eb.yaml s3://<your_bucket_name>/eb.yaml && \
aws s3 cp vpc.yaml s3://<your_bucket_name>/vpc.yaml
```

Finally, create the nested stack example
```sh
aws cloudformation create-stack \
  --stack-name nested-stack-example \
  --template-body file://nested.yaml \
  --region us-west-2 \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameters \
  ParameterKey=ApplicationName,ParameterValue=HBFL \
  ParameterKey=SubnetAZ,ParameterValue=us-west-2a \
  ParameterKey=Platform,ParameterValue=node \
  ParameterKey=BucketName,ParameterValue=<your_bucket_name>
```

## Removal

Remove the unnested stack with the command:
```sh
aws cloudformation delete-stack \
  --stack-name unnested-stack-example
```

Then, remove nested stack example with this command:
```sh
aws cloudformation delete-stack \
  --stack-name nested-stack-example
```
