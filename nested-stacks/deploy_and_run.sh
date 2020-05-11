#!/bin/bash

# BUCKET_NAME=<unique-bucket-name>
BUCKET_NAME="ryan-unique-cf-bucket"

# Create S3 Bucket
aws s3 mb s3://$BUCKET_NAME

# Copy templates to S3
aws s3 cp eb.yaml s3://$BUCKET_NAME/eb.yaml
aws s3 cp vpc.yaml s3://$BUCKET_NAME/vpc.yaml

# Execute template
aws cloudformation create-stack \
  --stack-name nested-stack-example \
  --template-body file://nested.yaml \
  --region us-west-2 \
  --parameters \
  ParameterKey=ApplicationName,ParameterValue=HBFL \
  ParameterKey=SubnetAZ,ParameterValue=us-west-2a \
  ParameterKey=Platform,ParameterValue=node \
  ParameterKey=BucketName,ParameterValue=$BUCKET_NAME