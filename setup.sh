#!/bin/bash

# New Relic OTLP endpoint
newrelicEndpoint="https://aws-api.nr-data.net/cloudwatch-metrics/v1"
if [[ $NEWRELIC_REGION == "eu" ]]; then
  newrelicEndpoint="https://aws-api.eu01.nr-data.net/cloudwatch-metrics/v1"
fi

# Initialize Terraform
terraform init

# Plan Terraform
terraform plan \
  -var NEWRELIC_ACCOUNT_ID=$NEWRELIC_ACCOUNT_ID \
  -var NEWRELIC_REGION=$NEWRELIC_REGION \
  -var NEWRELIC_LICENSE_KEY=$NEWRELIC_LICENSE_KEY \
  -var NEWRELIC_API_KEY=$NEWRELIC_API_KEY \
  -var NEWRELIC_CLOUDWATCH_ENDPOINT=$newrelicEndpoint \
  -var newrelic_metric_stream_name="MyTestStream" \
  -out "./tfplan"

# Apply Terraform
terraform apply "tfplan"

# # Comment this in to clean up everything
# terraform destroy \
#   -var NEWRELIC_ACCOUNT_ID=$NEWRELIC_ACCOUNT_ID \
#   -var NEWRELIC_REGION=$NEWRELIC_REGION \
#   -var NEWRELIC_LICENSE_KEY=$NEWRELIC_LICENSE_KEY \
#   -var NEWRELIC_API_KEY=$NEWRELIC_API_KEY \
#   -var NEWRELIC_CLOUDWATCH_ENDPOINT=$newrelicEndpoint \
#   -var newrelic_metric_stream_name="MyTestStream"
