resource "aws_subnet" "public1" {
  vpc_id                  = aws_vpc.clsp.id
  cidr_block              = var.public1_cidr_block
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags = {
    Name = "${var.vpc_name}_${var.Env}_public1"
    Env  = "${var.Env}"
  }
}

resource "aws_subnet" "public2" {
  vpc_id                  = aws_vpc.clsp.id
  cidr_block              = var.public2_cidr_block
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags = {
    Name = "${var.vpc_name}_${var.Env}_public2"
    Env  = "${var.Env}"
  }
}

resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.clsp.id
  cidr_block = var.private1_cidr_block

  tags = {
    Name = "${var.vpc_name}_${var.Env}_private1"
    Env  = "${var.Env}"
  }
}