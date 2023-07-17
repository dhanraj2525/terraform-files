resource "aws_vpc" "terraform-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  tags_all = {
    name = "my-first-terraform-vpc"
  }
}

# output "print-id" {
#   value = aws_vpc.terraform-vpc.id
# }