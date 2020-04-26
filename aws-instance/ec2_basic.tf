# resource "aws_instance" "ec2_basic" {
#   ami           = var.amis[var.region]
#   instance_type = "t2.micro"
# }

# output "ami" {
#     value = aws_instance.ec2_basic.ami
# }