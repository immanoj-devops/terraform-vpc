resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  count             = length(var.PUB_SUBNET_CIDR)
  cidr_block        = element(var.PUB_SUBNET_CIDR , count.index)

  tags = {
    Name = "${
        }
    }"
  }
}


resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = ""

  tags = {
    Name = "Main"
  }
}