resource "aws_vpc" "main" {
  cidr_block = "var.VPC_CIDR"
}

variable "VPC_CID"