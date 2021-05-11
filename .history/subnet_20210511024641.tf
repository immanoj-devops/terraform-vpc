resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  count             = length(var.)
  cidr_block        = "element()"

  tags = {
    Name = "pub-subnet"
  }
}


resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = ""

  tags = {
    Name = "Main"
  }
}