# You can alternatively set variables using command line flags
# terraform apply -var 'region=us-east-1'

# You can also specify variables in `terraform.tfvars` file
# You can load variables in other files using -var-file='file.tfvars' in cli

# You can also use TF_VAR_REGION to set region variable
# So you can use TF_VAR_XXX pattern to set corresponding XXX variable

variable "region" {
  default = "us-east-1"
}

variable "cidrs" { default = [] }

variable "amis" {
  type = map
  default = {
    "us-east-1" = "ami-b374d5a5"
    "us-west-2" = "ami-4b32be2b"
  }
}