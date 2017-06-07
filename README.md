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
es_version - ElasticSearch version
es_ebs_size - EBS volume size per data node
es_node_instance_type - Node instance size
es_node_instance_count - Node instance count
es_dedicated_master - Use dedicated master
es_master_instance_type - Master instance size
es_master_instance_count - Master instance count (must be more than 1)
es_zone_awareness - Multi-AZ (if true instance count must be even)
aws_region - Region to deploy
```

##Outputs

```
arn - ARN for ES cluster
endpoint - URL to connect
domain_id - ES doamin ID
```
