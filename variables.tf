variable "es_domain_envname" {}
variable "es_version" {}
variable "es_ebs_size" {}
variable "es_node_instance_type" {}
variable "es_node_instance_count" {}
variable "es_dedicated_master" {
  default = "false"
}
variable "es_master_instance_type" {}
variable "es_master_instance_count" {}
variable "es_zone_awareness" {}
variable "aws_region" {}
