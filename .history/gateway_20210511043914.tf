resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.PROJECT_NAME}-IGW"
  }
}

resource "aws_eip" "lb" {
  instance = aws_instance.web.id
  vpc      = true
}


resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.example.id

  tags = {
    Name = "gw NAT"
  }
}