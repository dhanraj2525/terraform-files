# creating a key pair

resource "aws_key_pair" "key-tf" {
  key_name   = "deployer-key"
  public_key = file("${path.module}/id_rsa.pub")
}
# output "key-name" {
#     value = aws_key_pair.key-tf.key_name
# }