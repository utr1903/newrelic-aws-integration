# Integrate AWS account to your New Relic account

## Setup

Run the `setup.sh` script by defining the corresponding variables according to your AWS and New Relic credentials.

- `NEWRELIC_ACCOUNT_ID` is the ID of the account where you would like to send the data to.
- `NEWRELIC_LICENSE_KEY` is the license key of the account where you would like to send the data to.
- `NEWRELIC_API_KEY` is the user API key of with which you will be able authenticate and create New Relic resources in your account.
- `NEWRELIC_REGION` is the region of your account. It will determine the correct endpoint for the metric stream to forward the metrics.

## References

**New Relic Official Documentation:**

https://docs.newrelic.com/docs/infrastructure/amazon-integrations/connect/aws-metric-stream-setup

**Terraform Registry for New Relic:**

https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/guides/cloud_integrations_guide#new-relic-terraform-provider-cloud-integrations-example-for-aws-gcp-and-azure

**Original Terraform Code:**

https://github.com/newrelic/terraform-provider-newrelic/blob/main/examples/cloud-integrations-aws.tf
