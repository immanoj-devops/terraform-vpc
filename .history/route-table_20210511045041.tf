resource "aws_route_table" "pub-rt" {
  vpc_id = aws_vpc.example.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "${var.PROJECT_NAME}-PubRT"
  }
}



resource "aws_route_table" "prv-rt" {
  vpc_id = aws_vpc.example.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natgw.id
  }

  tags = {
    Name = "Name = "${var.PROJECT_NAME}-PrvRT""
  }
}