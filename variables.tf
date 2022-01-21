variable "es_domain_envname" {
  description = "The desired name for the ElasticSearch domain"
  type        = string
}

variable "es_version" {
  description = "The version of ElasticSearch to deploy"
  type        = string
  default     = "6.0"
}

variable "es_access_policy" {
  description = "IAM policy document specifying the access policies for the domain"
  type        = string
  default     = null
}

variable "es_ebs_size" {
  description = "The size (GB) of EBS volumes attached to data nodes"
  type        = string
  default     = 50
}

variable "es_node_instance_type" {
  description = "Instance type of data nodes in the cluster"
  type        = string
  default     = "t2.micro.elasticsearch"
}

variable "es_node_instance_count" {
  description = "Number of instances in the cluster"
  type        = string
  default     = 2
}

variable "es_dedicated_master" {
  description = "Bool indicating whether dedicated master nodes are enabled for the cluster"
  type        = string
  default     = false
}

variable "es_master_instance_type" {
  description = "Instance type of the dedicated master nodes in the cluster"
  type        = string
  default     = "t2.micro.elasticsearch"
}

variable "es_master_instance_count" {
  description = "Number of dedicated master nodes in the cluster"
  type        = string
  default     = 1
}

variable "es_zone_awareness" {
  description = "Bool indicating whether zone awareness is enabled"
  type        = bool
  default     = false
}

variable "es_automated_snapshot_start_hour" {
  description = "Hour during which the service takes an automated daily snapshot of all indices"
  type        = string
  default     = "01"
}

variable "es_encrypt_at_rest_enabled" {
  description = "Whether to enable encryption at rest"
  type        = bool
  default     = false
}

variable "es_encrypt_at_rest_kms_key_id" {
  description = "The KMS key ID to use to encrypt Elasticsearch data at rest.  Defaults to aws/es service KMS key"
  type        = string
  default     = null
}

variable "aws_region" {
  description = "The AWS region in which to deploy resources"
  type        = string
  default     = "eu-west-1"
}
