resource "aws_vpc" "lambda_vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true

  tags = {
    "Name" = "${var.environment}-vpc"
  }
}