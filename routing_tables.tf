# Public Route Table
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = {
    Name = "public-route-table"
  }
}

resource "aws_route" "public_internet_access" {
  route_table_id         = aws_route_table.public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.eks_igw.id
}

#######################################################################################################
#######################################################################################################

# Private Route Table
# Private Route Table for Subnet A (uses NAT Gateway 1)
resource "aws_route_table" "private_rt_a" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = {
    Name = "private-route-table-a"
  }
}

resource "aws_route" "private_nat_access_a" {
  route_table_id         = aws_route_table.private_rt_a.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.eks_nat_1.id
}


# Private Route Table for Subnet B (uses NAT Gateway 2)
resource "aws_route_table" "private_rt_b" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = {
    Name = "private-route-table-b"
  }
}

resource "aws_route" "private_nat_access_b" {
  route_table_id         = aws_route_table.private_rt_b.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.eks_nat_2.id
}

