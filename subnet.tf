resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.terraform-vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "subnet1"
  }
}
# output "printsubnet" {
#   value = aws_subnet.subnet1.id
# }