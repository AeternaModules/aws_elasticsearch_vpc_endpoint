variable "elasticsearch_vpc_endpoints" {
  description = <<EOT
Map of elasticsearch_vpc_endpoints, attributes below
Required:
    - domain_arn
    - vpc_options (block):
        - security_group_ids (optional)
        - subnet_ids (required)
Optional:
    - region
EOT

  type = map(object({
    domain_arn = string
    region     = optional(string)
    vpc_options = object({
      security_group_ids = optional(set(string))
      subnet_ids         = set(string)
    })
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

