module "vpc" {
  source = "./modules/vpc"

  vpc_env                    = var.env
  vpc_cidr_block             = var.vpc_cidr
  azs                        = var.az
  private_subnet_cidr_blocks = var.private_subnet
  public_subnet_cidr_blocks  = var.public_subnet
  enable_nat_gateway         = var.enable_nat
  single_nat_gateway         = var.single_nat
  enable_vpn_gateway         = var.enable_vpn
  resource_tags              = var.tags
}


module "securiy_group" {
  source = "./modules/security_groups"

  sg_vpc_id         = module.vpc.output_vpc_id
  vpc_cidr_block    = var.vpc_cidr
  custom_cidr_block = var.custom_cidr
  resource_tags     = var.tags
  sg_env            = var.env

  depends_on = ["module.vpc"]
}


module "ec2" {
  source = "./modules/ec2_single"

  private_subnet_id = module.vpc.private_subnets_id
  security_group_id = module.securiy_group.security_group_id
  availability_zone = var.az
  ami_id            = var.ec2_ami
  resource_tags     = var.tags
  ec2_name          = var.ec2_name
  instance_type     = var.instance_type

  depends_on = ["module.vpc", "module.securiy_group"]
}


module "alb" {
  source = "./modules/load_balancer"

  vpc_id            = module.vpc.output_vpc_id
  public_subnet_id  = module.vpc.public_subnets_id
  security_group_id = module.securiy_group.security_group_id
  alb_instance_id   = module.ec2.instance_id
  resource_tags     = var.tags

  depends_on = ["module.ec2"]
}
