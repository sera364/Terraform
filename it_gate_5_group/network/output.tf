output vpc_id {
  value= aws_vpc.vpc-itgate.id 
}

output pub_sub1_id {
  value = aws_subnet.public-subnet-1.id
}

output pub_sub2_id {
  value = aws_subnet.public-subnet-2.id
}

output pri_sub1_id {
  value = aws_subnet.private-subnet-1.id
}

output pri_sub2_id {
  value = aws_subnet.private-subnet-2.id
}