output "endpoint" {
  value = "${aws_elasticsearch_domain.es-domain.endpoint}"
}

output "domain_id" {
  value = "${aws_elasticsearch_domain.es-domain.domain_id}"
}

output "arn" {
  value = "${aws_elasticsearch_domain.es-domain.arn}"
}
