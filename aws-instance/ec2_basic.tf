resource "aws_instance" "ec2_basic" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}
