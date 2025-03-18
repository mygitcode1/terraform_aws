resource "aws_security_group" "clsp_sg" {
  name        = "allow_all"
  description = "Allow SSH inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.clsp.id

  ingress {
    description = "SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "clsp_prod_public_sg"
  }
}