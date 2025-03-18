# # Allocate an Elastic IP for the NAT Gateway
# resource "aws_eip" "clustershop_nat_eip" {
#   domain = "vpc"

#   tags = {
#     Name = "clustershop_nat_eip"
#     Env  = "prod"
#   }
# }

# # Create a NAT Gateway in the Public Subnet
# resource "aws_nat_gateway" "clustershop_nat" {
#   allocation_id = aws_eip.clustershop_nat_eip.id
#   subnet_id = aws_subnet.clustershop_subnet_public1.id

#   tags = {
#     Name = "clustershop_nat_gateway"
#     Env  = "prod"
#   }

# #   # Ensure the NAT Gateway is created only after the IGW is available
#   depends_on = [aws_internet_gateway.clustershop_igw, aws_subnet.clustershop_subnet_public1]
# }
