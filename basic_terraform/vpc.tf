# Create a VPC
# Here aws_vpc is a resource type that terraform can Identify.
# We can list all such kind of resource types:
# terraform providers schema -json | jq '.provider_schemas["registry.terraform.io/hashicorp/aws"].resource_schemas | keys'

resource "aws_vpc" "clsp" {
  cidr_block           = var.cidr_block
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  instance_tenancy     = var.instance_tenancy
  tags = {
    Name = "${var.vpc_name}_${var.Env}"
    Env  = "${var.Env}"
  }
}

# Define the Internet Gateway
resource "aws_internet_gateway" "clsp_igw" {
  vpc_id = aws_vpc.clsp.id

  tags = {
    Name = "${var.vpc_name}_${var.Env}_igw"
    Env  = "${var.Env}"
  }
}

# # The Content b/n
# {
#   cidr_block = "172.22.0.0/16"
#   tags = {
#     Name    = "clsp2"
#     Sprinto = "notprod"
#   }
# }                                     is Argument reference.


# Default RouteTable and SG for each VPC created even though not mentioned explicitly.



# resource "aws_vpc" "teashop" {
#   cidr_block           = var.teashop_cidr_block
#   enable_dns_support   = true
#   enable_dns_hostnames = true
#   tags = {
#     Name    = "var.vpc_2"
#     Sprinto = "prod"
#   }
# }

# # Define the Internet Gateway
# resource "aws_internet_gateway" "teashop_igw" {
#   vpc_id = aws_vpc.teashop.id

#   tags = {
#     Name    = "var.vpc_2_igw"
#     Sprinto = "prod"
#   }
# }



resource "aws_vpc" "blue_vpc" {
  # VPC will be imported, so no need to define CIDR block
}