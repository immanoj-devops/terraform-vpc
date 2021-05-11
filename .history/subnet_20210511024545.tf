resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = ""

  tags = {
    Name = "pub"
  }
}


resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = ""

  tags = {
    Name = "Main"
  }
}