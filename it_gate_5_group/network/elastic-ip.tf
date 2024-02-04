resource "aws_eip" "elastic-ip-gate" {
  domain   = "vpc"
  tags = {
    Name = "elastic-ip-gate"
  }
}