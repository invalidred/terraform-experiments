# resource "aws_instance" "ec2_local_provisioner" {
#   ami           = "ami-2757f631"
#   instance_type = "t2.micro"

#   provisioner "local-exec" {
#     command = "echo ${aws_instance.ec2_local_provisioner.public_ip} > ip_address.txt"
#   }
# }
