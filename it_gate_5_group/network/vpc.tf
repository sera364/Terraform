resource "aws_vpc" "vpc-itgate" {
  cidr_block = var.vpc_cidr #argument
  enable_dns_hostnames = true
  tags = {
    Name = var.name
  }
}