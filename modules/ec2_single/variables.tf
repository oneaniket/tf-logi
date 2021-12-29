##Variable required for security group module

##Variable required for EC2 module
variable "private_subnet_id" {
  type = list(string)
}

variable "security_group_id" {}

variable "availability_zone" {
  type = list(string)
  # default = ["us-west-2a", "us-west-2b", "us-west-2c", ]
}

variable "ami_id" {
  default = "null"
}


variable "resource_tags" {
  description = "Tags for all resources"
  type        = map(string)
  # default = {
  #   Terraform   = "true",
  #   environment = "dev"
  # }
}

variable "ec2_name" {
  default = "null"
}
