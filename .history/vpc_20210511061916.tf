resource "aws_vpc" "main" {

  cidr_block         = var.VPC_CIDR
  enable_dns_support = true
  tags = {
    Name = "${var.ENV}-VPC"
  }

}




