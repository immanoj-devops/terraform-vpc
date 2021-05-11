resource "aws_vpc_peering_connection" "peering-conn" {
  peer_owner_id = aws_vpc.main.id
  peer_vpc_id   = aws_vpc.bar.id
  vpc_id        = aws_vpc.foo.id
}