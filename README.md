# AWS Glue Terraform module

Terraform module which creates AWS Glue resources.

## Usage

See [`examples`](https://github.com/ahmadalibagheri/terraform-aws-glue/tree/main/examples) directory for working examples to reference:

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