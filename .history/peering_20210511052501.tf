resource "aws_vpc_peering_connection" "peering-conn" {

  peer_vpc_id   = aws_vpc.main.id
  vpc_id        = 
}