provider "aws" {
  region = var.aws_region
}


# Add the resources relatedo to the provider
module "cdn" {
  source = "cloudposse/cloudfront-s3-cdn/aws"
  # Cloud Posse recommends pinning every module to a specific version
  version = "0.93.0"

  origin_bucket     = var.origin_bucket
  aliases           = []
  dns_alias_enabled = true
  parent_zone_name  = ""
  index_document    = "index.html"
  error_document    = "error.html"
  name              = var.origin_bucket
}