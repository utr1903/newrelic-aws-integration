#!/bin/bash

# Initialise Terraform
terraform init

# Plan Terraform
terraform plan \
  -var NEW_RELIC_ACCOUNT_ID=$NEWRELIC_ACCOUNT_ID \
  -var NEW_RELIC_LICENSE_KEY=$NEWRELIC_LICENSE_KEY \
  -var NEW_RELIC_ACCOUNT_NAME="MyAccountName" \
  -var NEW_RELIC_CLOUDWATCH_ENDPOINT="https://aws-api.eu01.nr-data.net/cloudwatch-metrics/v1" \
  -var AWS_REGION="eu-west-1" \
  -out "./tfplan"

# Apply Terraform
terraform apply "tfplan"
