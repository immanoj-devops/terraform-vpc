resource "aws_route_table" "pub-rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
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
  count          = length(var,)
  subnet_id      = aws_subnet.public.*.id[0]
  route_table_id = aws_route_table.pub-rt.id
}

resource "aws_route_table_association" "prv-rt-association" {
  subnet_id      = aws_subnet.private.*.id[0]
  route_table_id = aws_route_table.prv-rt.id
}