# # EC2 Instance in Public Subnet
# resource "aws_instance" "clustershop_instance1" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = "t2.micro"
#   subnet_id     = aws_subnet.clustershop_subnet_public1.id
#   vpc_security_group_ids = [aws_security_group.clustershop_sg.id]
#   key_name      = "Laptop-key-pem"  # Replace with your key pair name

#   tags = {
#     Name = "clustershop-admin"
#   }
# }

# # Create a new EC2 instance
# resource "aws_instance" "clustershop-1" {
#   ami           = "ami-0c55b159cbfafe1f0"  # Use the AMI ID for your desired OS
#   instance_type = "t2.micro"

#   tags = {
#     Name = "clustershop-1"
#     Env  = "Prod"
#   }
# }
