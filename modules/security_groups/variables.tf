##Variable required for security group module


##Common variables
variable "sg_vpc_id" {
  type = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  # default     = "10.0.0.0/16"
}

variable "custom_cidr_block" {
  # default = ["14.16.146.125/32","208.184.224.35/32","4.78.246.196/32","12.202.171.37/32","4.16.173.56/32","208.184.224.1/32"]
}

variable "resource_tags" {
  description = "Tags for all resources"
  type        = map(string)
  # default     = {
  #   Terraform     = "true",
  #   environment = "dev"
  # }
}

variable "sg_env" {
  default = "null"
}
