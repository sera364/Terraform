resource "aws_nat_gateway" "natgw-gate" {
  allocation_id = aws_eip.elastic-ip-gate.id
  subnet_id     = aws_subnet.public-subnet-1.id

  tags = {
    Name = "natgw-gate"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.internet-gw]
}