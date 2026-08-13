output "elasticsearch_vpc_endpoints_id" {
  description = "Map of id values across all elasticsearch_vpc_endpoints, keyed the same as var.elasticsearch_vpc_endpoints"
  value       = { for k, v in aws_elasticsearch_vpc_endpoint.elasticsearch_vpc_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elasticsearch_vpc_endpoints_domain_arn" {
  description = "Map of domain_arn values across all elasticsearch_vpc_endpoints, keyed the same as var.elasticsearch_vpc_endpoints"
  value       = { for k, v in aws_elasticsearch_vpc_endpoint.elasticsearch_vpc_endpoints : k => v.domain_arn if v.domain_arn != null && length(v.domain_arn) > 0 }
}
output "elasticsearch_vpc_endpoints_endpoint" {
  description = "Map of endpoint values across all elasticsearch_vpc_endpoints, keyed the same as var.elasticsearch_vpc_endpoints"
  value       = { for k, v in aws_elasticsearch_vpc_endpoint.elasticsearch_vpc_endpoints : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "elasticsearch_vpc_endpoints_region" {
  description = "Map of region values across all elasticsearch_vpc_endpoints, keyed the same as var.elasticsearch_vpc_endpoints"
  value       = { for k, v in aws_elasticsearch_vpc_endpoint.elasticsearch_vpc_endpoints : k => v.region if v.region != null && length(v.region) > 0 }
}
output "elasticsearch_vpc_endpoints_vpc_options" {
  description = "Map of vpc_options values across all elasticsearch_vpc_endpoints, keyed the same as var.elasticsearch_vpc_endpoints"
  value       = { for k, v in aws_elasticsearch_vpc_endpoint.elasticsearch_vpc_endpoints : k => v.vpc_options if v.vpc_options != null && length(v.vpc_options) > 0 }
}

