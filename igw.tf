resource "aws_internet_gateway" "igw1" {
  vpc_id = aws_vpc.terraform-vpc.id

  tags = {
    Name = "terraform-igw"
  }
}
# output "print-igw" {
#   value = aws_internet_gateway.igw1.id
# }