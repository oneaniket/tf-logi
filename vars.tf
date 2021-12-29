variable "region" {
  # default = "us-west-2"
}

#Variable for VPC module#
variable "env" {
  # default = "dev"
}

#Variable for VPC module#
variable "vpc_cidr" {
  # default = "10.0.0.0/16"
}

variable "az" {
  # default = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "private_subnet" {
  # default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnet" {
  # default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "enable_nat" {
  # default = true
}

variable "single_nat" {
  # default = true
}

variable "enable_vpn" {
  # default = true
}

variable "tags" {
  # default = {
  #   Terraform   = "true",
  #   environment = "dev"
  # }
}

variable "custom_cidr" {
  # default = ["14.16.146.125/32","208.184.224.35/32","4.78.246.196/32","12.202.171.37/32","4.16.173.56/32","208.184.224.1/32"]
}

variable "ec2_ami" {
  # default = ""
}

variable "ec2_name" {
  # default = ""
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  default = ""
}


