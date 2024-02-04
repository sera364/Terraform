resource "aws_instance" "bastion-server" {
  ami           = "ami-0481e8ba7f486bd99"
  instance_type = "t2.micro"
  subnet_id     = module.network.pub_sub1_id


  security_groups = [aws_security_group.public-security-group.id]
  key_name        = aws_key_pair.tf-key-pair.id
  user_data       = <<-EOF
              #!/bin/bash
                echo '${tls_private_key.rsa_key.private_key_pem}' > /home/ubuntu/tf-key-pair.pem
                chmod 400 tf-key-pair.pem
              EOF 
  tags = {
    Name = "bastion-server"
  }
}