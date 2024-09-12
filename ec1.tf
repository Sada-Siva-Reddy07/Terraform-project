resource "aws_instance" "ecomm" {
  ami                         = "ami-0244e31dc33c47ac0"
  instance_type               = "t3.micro"
  key_name                    = "stockhol"
  vpc_security_group_ids      = [aws_security_group.web-sg.id]
  subnet_id                   = aws_subnet.public-subnet1.id
  associate_public_ip_address = true
  user_data                   = file("data1.sh")
  tags = {
    name = "EC2-1"
  }
}
