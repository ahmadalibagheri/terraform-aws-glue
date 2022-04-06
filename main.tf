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
