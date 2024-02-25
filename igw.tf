#IGW creation

resource "aws_internet_gateway" "siva-gateway" {
  vpc_id = aws_vpc.siva.id
}
