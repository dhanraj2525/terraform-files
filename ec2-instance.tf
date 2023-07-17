data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]
  filter {
    name   = "name"
    values = ["${var.image_name}"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
resource "aws_instance" "firstserver" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.subnet1.id
  key_name        = aws_key_pair.key-tf.key_name
  security_groups = [aws_security_group.terraform-sg.id]
  associate_public_ip_address = true
  tags = {
    Name = "web-server"
  }
user_data = <<EOF
#!/bin/bash
apt-get update
apt-get install -y nginx
echo "Hello dhanraj" > /var/www/html/index.nginx-debian.html
EOF
 }

