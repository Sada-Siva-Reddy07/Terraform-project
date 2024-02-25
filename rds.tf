#rds file

resource "aws_db_subnet_group" "rds-subnet" {
  name       = "rds-subnet"
  subnet_ids = [aws_subnet.private-subnet1.id, aws_subnet.private-subnet2.id]

  tags = {
    Name = "Db subnet group"

  }
}
resource "aws_db_instance" "rds-subnet" {
  allocated_storage      = 10
  db_subnet_group_name   = aws_db_subnet_group.rds-subnet.id
  engine                 = "mysql"
  engine_version         = "8.0.35"
  instance_class         = "db.t2.micro"
  multi_az               = true
  username               = "sada"
  password               = "siva1850"
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.db-sg.id]
}

