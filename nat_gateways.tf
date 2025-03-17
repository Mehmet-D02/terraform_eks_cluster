resource "aws_nat_gateway" "eks_nat_1" {
  allocation_id = aws_eip.nat_eip_1.id
  subnet_id     = aws_subnet.public_subnet_a.id

  tags = {
    Name = "eks-nat-gateway-1"
  }
}


resource "aws_nat_gateway" "eks_nat_2" {
  allocation_id = aws_eip.nat_eip_2.id
  subnet_id     = aws_subnet.public_subnet_b.id

  tags = {
    Name = "eks-nat-gateway-2"
  }
}
