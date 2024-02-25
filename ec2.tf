resource "aws_instance" "food" {
  ami                         = "ami-07761f3ae34c4478d"
  instance_type               = "t2.micro"
  key_name                    = "WORDPRESS"
  vpc_security_group_ids      = [aws_security_group.web-sg.id]
  subnet_id                   = aws_subnet.public-subnet2.id
  associate_public_ip_address = true
  user_data                   = file("data2.sh")
  tags = {
    name = "EC2-2"
  }
}
