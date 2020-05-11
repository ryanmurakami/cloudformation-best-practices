#!/bin/bash

aws cloudformation create-stack \
  --stack-name parameters-example \
  --template-body file://reusable-parameters.yaml \
  --region us-west-2 \
  --parameters file://parameters.json
