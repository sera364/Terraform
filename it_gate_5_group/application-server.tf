resource "aws_instance" "application-server" {
  ami           = "ami-0481e8ba7f486bd99"
  instance_type = "t2.micro"
  subnet_id     = module.network.pri_sub1_id


  security_groups = [aws_security_group.private-security-group.id]
  key_name        = aws_key_pair.tf-key-pair.id
  tags = {
    Name = "application-server"
  }
}