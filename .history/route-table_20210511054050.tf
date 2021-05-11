resource "aws_route_table" "pub-rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  route {
    cidr_block = data.aws_vpc.default.cidr_block
    gateway_id = 
  }

  tags = {
    Name = "${var.PROJECT_NAME}-Public-RT"
  }
}



resource "aws_route_table" "prv-rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natgw.id
  }

  tags = {
    Name = "${var.PROJECT_NAME}-Private-RT"
  }
}

resource "aws_route_table_association" "pub-rt-association" {
  count          = length(var.PUB_SUBNET_CIDR)
  subnet_id      = element(aws_subnet.public.*.id , count.index)
  route_table_id = aws_route_table.pub-rt.id
}

resource "aws_route_table_association" "prv-rt-association" {
  count          = length(var.PRV_SUBNET_CIDR)
  subnet_id      = element(aws_subnet.private.*.id , count.index)
  route_table_id = aws_route_table.prv-rt.id
}