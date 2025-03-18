# Route Table for Public Subnet
resource "aws_route_table" "clsp_public_rt" {
  vpc_id = aws_vpc.clsp.id

  route {
    cidr_block = "0.0.0.0/0" # Default route to the internet
    gateway_id = aws_internet_gateway.clsp_igw.id
  }

  tags = {
    Name = "${var.vpc_name}_${var.Env}_public_rt"
    Env  = "${var.Env}"
  }
}

# # Route Table for Private Subnet
resource "aws_route_table" "clsp_private_rt" {
  vpc_id = aws_vpc.clsp.id

  route {
    cidr_block = "0.0.0.0/0" # Internet_bound traffic
    #  nat_gateway_id = aws_nat_gateway.clsp_nat.id
    gateway_id = aws_internet_gateway.clsp_igw.id
  }

  tags = {
    Name = "${var.vpc_name}_${var.Env}_private_rt"
    Env  = "${var.Env}"
  }
  #    # Ensure the NAT Gateway is created
  #    depends_on = [aws_nat_gateway.clsp_nat]
}


########### Adding Routes to the Default Table ################
# # Fetch the default route table for the VPC
# data "aws_route_table" "default_rt" {
#   vpc_id = aws_vpc.clsp.id
#   filter {
#     name   = "association.main"
#     values = ["true"]
#   }
# }

# # Add a default route to the internet gateway in the default route table
# resource "aws_route" "default_rt_internet_access" {
#   route_table_id         = data.aws_route_table.default_rt.id
#   destination_cidr_block = "0.0.0.0/0"
#   gateway_id             = aws_internet_gateway.clsp_igw.id
# }