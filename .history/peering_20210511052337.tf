resource "aws_vpc_peering_connection" "peering-conn" {

  peer_vpc_id   = aws_vpc.bar.id
  vpc_id        = aws_vpc.foo.id
}