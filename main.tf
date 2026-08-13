resource "aws_elasticsearch_vpc_endpoint" "elasticsearch_vpc_endpoints" {
  for_each = var.elasticsearch_vpc_endpoints

  domain_arn = each.value.domain_arn
  region     = each.value.region

  vpc_options {
    security_group_ids = each.value.vpc_options.security_group_ids
    subnet_ids         = each.value.vpc_options.subnet_ids
  }
}

