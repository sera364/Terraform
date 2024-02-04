resource "aws_subnet" "public-subnet-1" {
  vpc_id     = aws_vpc.vpc-itgate.id
  cidr_block = var.public_subnet1_cidr
  availability_zone ="us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.name}public-subnet-1"
  }
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id     = aws_vpc.vpc-itgate.id
  cidr_block = var.public_subnet2_cidr
  availability_zone ="us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.name}public-subnet-2"
  }
}

resource "aws_subnet" "private-subnet-1" {
  vpc_id     = aws_vpc.vpc-itgate.id
  cidr_block = var.private_subnet1_cidr
  availability_zone ="us-east-1a"
  tags = {
    Name = "${var.name}private-subnet-1"
  }
}

resource "aws_subnet" "private-subnet-2" {
  vpc_id     = aws_vpc.vpc-itgate.id
  cidr_block = var.private_subnet2_cidr
  availability_zone ="us-east-1b"
  tags = {
    Name = "${var.name}private-subnet-2"
  }
}