resource "aws_route_table" "terraform-rout1" {
  vpc_id = aws_vpc.terraform-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw1.id
  }

  tags = {
    Name = "example"
  }
}
resource "aws_route_table_association" "associate" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.terraform-rout1.id
}