resource "aws_elasticsearch_domain" "es-domain" {
  domain_name           = var.es_domain_envname
  elasticsearch_version = var.es_version

  access_policies = var.es_access_policy != "" ? var.es_access_policy : data.aws_iam_policy_document.elasticsearch.json

  snapshot_options {
    automated_snapshot_start_hour = var.es_automated_snapshot_start_hour
  }

  ebs_options {
    ebs_enabled = true
    volume_type = "gp2"
    volume_size = var.es_ebs_size
  }

  cluster_config {
    instance_type            = var.es_node_instance_type
    instance_count           = var.es_node_instance_count
    dedicated_master_enabled = var.es_dedicated_master
    dedicated_master_type    = var.es_master_instance_type
    dedicated_master_count   = var.es_master_instance_count
    zone_awareness_enabled   = var.es_zone_awareness
  }

  encrypt_at_rest {
    enabled    = var.es_encrypt_at_rest_enabled
    kms_key_id = var.es_encrypt_at_rest_kms_key_id
  }

  tags = {
    "Environment" = "${var.es_domain_envname}"
  }
}

data "aws_caller_identity" "current" {}

data "aws_iam_policy_document" "elasticsearch" {
  statement {
    actions = [
      "es:*",
    ]

    resources = [
      "arn:aws:es:${var.aws_region}:${data.aws_caller_identity.current.account_id}:domain/${var.es_domain_envname}/*",
    ]
  }
}
