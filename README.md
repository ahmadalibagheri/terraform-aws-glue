# AWS Glue Terraform module

Terraform module which creates AWS MSK (Managed Streaming for Kafka) resources.

## Usage

See [`examples`](https://github.com/ahmadalibagheri/terraform-aws-msk/tree/main/examples) directory for working examples to reference:

```hcl
module "glue-connection" {
  source                 = "./glue-connection"
  name                   = "Kafka"
  number_of_broker_nodes = 3
  enhanced_monitoring    = "PER_TOPIC_PER_PARTITION"
  environment = "dev"
}

module "glue-job" {
  source                 = "./glue-job"
  name                   = "Kafka"
  number_of_broker_nodes = 3
  enhanced_monitoring    = "PER_TOPIC_PER_PARTITION"
  environment = "dev"
}

```