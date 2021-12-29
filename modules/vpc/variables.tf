variable "vpc_env" {
  description = "Value of the Name tag for the VPC"
  type        = string
  default     = "null"
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  # default     = "10.0.0.0/16"
}

variable "azs" {
  type = list(string)
  # default = ["us-west-2a", "us-west-2b", "us-west-2c", ]
}


variable "private_subnet_cidr_blocks" {
  description = "Available cidr blocks for private subnets."
  type        = list(string)
  # default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", ]
}

variable "public_subnet_cidr_blocks" {
  description = "Available cidr blocks for public subnets."
  type        = list(string)
  # default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24", ]
}

variable "enable_nat_gateway" {
  description = "Enable NAT gateway in your VPC."
  type        = bool
  # default     = true
}

variable "single_nat_gateway" {
  description = "Enable single NAT gateway for your subnets."
  type        = bool
  # default     = true
}

variable "enable_vpn_gateway" {
  description = "Enable VPN gateway in your VPC."
  type        = bool
  # default     = true
}

variable "resource_tags" {
  description = "Tags for all resources"
  type        = map(string)
  # default = {
  #   Terraform   = "true",
  #   environment = "dev"
  # }
}
