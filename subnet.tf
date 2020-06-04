resource "aws_subnet" "red-box-subnet" {
  vpc_id     = aws_vpc.red-box.id
  cidr_block = var.subnet-cidr_block

  tags = {
    Name = "Red-box-subnet"
  }
}

