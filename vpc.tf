resource "aws_vpc" "red-box" {
  cidr_block = var.vpc-cidr_block
  tags = {
    Name = "red-box-vpc"
  }
}