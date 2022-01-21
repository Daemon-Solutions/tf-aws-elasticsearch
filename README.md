## Terraform version compatibility

| Module version | Terraform version |
|----------------|-------------------|
| 2.x.x          | 0.12.x            |
| 1.x.x          | 0.11.x            |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_elasticsearch_domain.es-domain](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.elasticsearch](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The AWS region in which to deploy resources | `string` | `"eu-west-1"` | no |
| <a name="input_es_access_policy"></a> [es\_access\_policy](#input\_es\_access\_policy) | IAM policy document specifying the access policies for the domain | `string` | `null` | no |
| <a name="input_es_automated_snapshot_start_hour"></a> [es\_automated\_snapshot\_start\_hour](#input\_es\_automated\_snapshot\_start\_hour) | Hour during which the service takes an automated daily snapshot of all indices | `string` | `"01"` | no |
| <a name="input_es_dedicated_master"></a> [es\_dedicated\_master](#input\_es\_dedicated\_master) | Bool indicating whether dedicated master nodes are enabled for the cluster | `string` | `false` | no |
| <a name="input_es_domain_envname"></a> [es\_domain\_envname](#input\_es\_domain\_envname) | The desired name for the ElasticSearch domain | `string` | n/a | yes |
| <a name="input_es_ebs_size"></a> [es\_ebs\_size](#input\_es\_ebs\_size) | The size (GB) of EBS volumes attached to data nodes | `string` | `50` | no |
| <a name="input_es_encrypt_at_rest_enabled"></a> [es\_encrypt\_at\_rest\_enabled](#input\_es\_encrypt\_at\_rest\_enabled) | Whether to enable encryption at rest | `bool` | `false` | no |
| <a name="input_es_encrypt_at_rest_kms_key_id"></a> [es\_encrypt\_at\_rest\_kms\_key\_id](#input\_es\_encrypt\_at\_rest\_kms\_key\_id) | The KMS key ID to use to encrypt Elasticsearch data at rest.  Defaults to aws/es service KMS key | `string` | `null` | no |
| <a name="input_es_master_instance_count"></a> [es\_master\_instance\_count](#input\_es\_master\_instance\_count) | Number of dedicated master nodes in the cluster | `string` | `1` | no |
| <a name="input_es_master_instance_type"></a> [es\_master\_instance\_type](#input\_es\_master\_instance\_type) | Instance type of the dedicated master nodes in the cluster | `string` | `"t2.micro.elasticsearch"` | no |
| <a name="input_es_node_instance_count"></a> [es\_node\_instance\_count](#input\_es\_node\_instance\_count) | Number of instances in the cluster | `string` | `2` | no |
| <a name="input_es_node_instance_type"></a> [es\_node\_instance\_type](#input\_es\_node\_instance\_type) | Instance type of data nodes in the cluster | `string` | `"t2.micro.elasticsearch"` | no |
| <a name="input_es_version"></a> [es\_version](#input\_es\_version) | The version of ElasticSearch to deploy | `string` | `"6.0"` | no |
| <a name="input_es_zone_awareness"></a> [es\_zone\_awareness](#input\_es\_zone\_awareness) | Bool indicating whether zone awareness is enabled | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | n/a |
| <a name="output_domain_id"></a> [domain\_id](#output\_domain\_id) | n/a |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | n/a |
