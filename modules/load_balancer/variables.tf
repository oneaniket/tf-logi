##Variable required for security group module

##Common variables
variable "vpc_id" {
  type = string
}

variable "public_subnet_id" {
  type = list(string)
}

# variable "alb_instance_id" {
#   default = "null"
# }


variable "security_group_id" {}

#variable "target_id" {
#  type = list(string)
#}

variable "resource_tags" {
  description = "Tags for all resources"
  type        = map(string)
  # default     = {
  #   Terraform     = "true",
  #   environment = "dev"
  # }
}

variable "alb_instance_id" {
  default = "null"
}
