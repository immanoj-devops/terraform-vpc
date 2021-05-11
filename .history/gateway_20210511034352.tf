resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.PROJECT_NAME}-IGW"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.foo.id
  route_table_id = aws_route_table.bar.id
}