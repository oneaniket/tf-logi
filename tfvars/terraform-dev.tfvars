##Environment variables for VPC and security group##
region         = "us-west-2"
env            = "dev"
vpc_cidr       = "10.0.0.0/16"
az             = ["us-west-2a", "us-west-2b", "us-west-2c"]
private_subnet = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnet  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
enable_nat     = true
single_nat     = true
enable_vpn     = true
tags = {
  Terraform   = "true",
  environment = "dev"
}

##Variable for security group##
# custom_cidr = ["14.16.146.125/32", "208.184.224.35/32", "4.78.246.196/32", "12.202.171.37/32", "4.16.173.56/32", "208.184.224.1/32"]
custom_cidr = "14.16.146.125/32"
ec2_ami     = "ami-00be885d550dcee43"
ec2_name    = "apach2-test"
