resource "aws_security_group" "default_group" {
  name        = "${var.environment}-default-sg"
  description = "Default security group for Lambda VPC network"
  vpc_id      = aws_vpc.lambda_vpc.id
  depends_on = [
    aws_vpc.lambda_vpc
  ]

  tags = {
    "Name" = "${var.environment}-default-sg"
  }
}