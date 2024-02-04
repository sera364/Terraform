resource "aws_internet_gateway" "internet-gw" {
  vpc_id = aws_vpc.vpc-itgate.id

  tags = {
    Name = "internet-gw"
  }
}