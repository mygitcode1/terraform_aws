# =============== Associating subnets explicitly to Explicitly created Route Table =======
# # Associate Public Subnet with Public Route Table
resource "aws_route_table_association" "clsp_public1_assoc" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.clsp_public_rt.id
}

resource "aws_route_table_association" "clsp_public2_assoc" {
  subnet_id      = aws_subnet.public2.id
  route_table_id = aws_route_table.clsp_public_rt.id
}

# # Associate Private Subnet with Private Route Table
resource "aws_route_table_association" "clsp_private1_assoc" {
  subnet_id      = aws_subnet.private1.id
  route_table_id = aws_route_table.clsp_private_rt.id
}
