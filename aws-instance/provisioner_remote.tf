# resource "aws_key_pair" "example" {
#   key_name   = "examplekey"
#   public_key = file("~/.ssh/terraform.pub")
# }

# resource "aws_instance" "provisioner_remote" {
#   key_name      = aws_key_pair.example.key_name
#   ami           = "ami-b374d5a5"
#   instance_type = "t2.micro"

#   connection {
#     type        = "ssh"
#     user        = "ec2-user"
#     private_key = file("~/.ssh/terraform")
#     host        = self.public_ip
#   }

#   provisioner "local-exec" {
#     command = "echo ${aws_instance.provisioner_remote.public_ip} > ip_address.txt"
#   }

#   provisioner "remote-exec" {
#     inline = [
#       "sudo amazon-linux-extras enable nginx1.12",
#       "sudo yum -y install nginx",
#       "sudo systemctl start nginx"
#     ]
#   }
# }