module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "gda-int-tab-${var.vpc_env}-vpc"
  cidr = var.vpc_cidr_block

  azs             = var.azs
  private_subnets = var.private_subnet_cidr_blocks
  public_subnets  = var.public_subnet_cidr_blocks

  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway

  enable_vpn_gateway = var.enable_vpn_gateway

  tags = var.resource_tags
}
