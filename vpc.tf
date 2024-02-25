#vpc
resource "aws_vpc" "siva" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    Name = "siva-vpc"
  }
}
