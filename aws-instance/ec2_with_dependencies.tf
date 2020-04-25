resource "aws_instance" "ec2_with_deps" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
  depends_on    = [aws_s3_bucket.s3_dep_example]
}

resource "aws_eip" "ip" {
  vpc      = true
  instance = aws_instance.ec2_with_deps.id
}

resource "aws_s3_bucket" "s3_dep_example" {
  bucket = "abdul-khan-terraform-example-bucket"
  acl    = "private"
}

# defines an output variable of ip
# run `terraform output ip` after `terraform plan` to see output variable
output "ip" {
  value = aws_eip.ip.public_ip
}