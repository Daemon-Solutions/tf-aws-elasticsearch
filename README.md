# tf-aws-elasticsearch

Provides AWS Elasticsearch domain

##Usage
```
module "testES" {
  source             = "../../../git-tf/tf-aws-elasticsearch/"

  es_domain_envname = "${var.customer}-testesdomain"
  es_version = "5.1"
  es_ebs_size = "10"
  es_node_instance_type = "t2.small.elasticsearch"
  es_node_instance_count = "1"
  es_dedicated_master = "false"
  es_master_instance_type = "t2.small.elasticsearch"
  es_master_instance_count = "2"
  es_zone_awareness = "false"           
  aws_region = "eu-west-1"
}
```

##Variables
```
es_domain_envname  - Elastic Search Domain Name
es_version - ElasticSearch version (Defaults to 6.0)
es_access_policy - A JSON IAM policy to use.  Will use a default policy if not supplied.
es_ebs_size - EBS volume size per data node (Defaults to 50)
es_node_instance_type - Node instance size (Defaults to 2)
es_node_instance_count - Node instance count (Defaults to t2.micro.elasticsearch)
es_dedicated_master - Use dedicated master (Defaults to false)
es_master_instance_type - Master instance size (Defaults to t2.micro.elasticsearch)
es_master_instance_count - Master instance count (Defaults to 1)
es_zone_awareness - Multi-AZ (if true instance count must be even)
es_automatic_snapshot_start_hour - What time to allow automatic snapshots to be taken (defaults to 01)
aws_region - Region to deploy (Defaults to eu-west-1)
```

##Outputs

```
arn - ARN for ES cluster
endpoint - URL to connect
domain_id - ES doamin ID
```

## Breaking changes
Version 1.0.0 no longer sets the aws_region in the default policy to `eu-central-1` if `aws_region` is set to `eu-west-2` and will instead use the value you supplied in `aws_region`.