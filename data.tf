#security group for database tier

resource "aws_security_group" "db-sg" {
  vpc_id = aws_vpc.siva.id

  ingress {
    description     = "allow traffic from app layer"
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = [aws_security_group.web-sg.id]
  }

  egress {
    from_port   = 32768
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "db-sg"
  }
}
