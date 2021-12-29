##Module to create security Group

module "security_groups" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "gda-int-tab-${var.sg_env}-tableau-sg"
  description = "Security group for Single-Node Tableau deployment"
  vpc_id      = var.sg_vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["https-443-tcp", "http-80-tcp"]
  ingress_with_cidr_blocks = [
    {
      from_port   = 3389
      to_port     = 3389
      protocol    = "tcp"
      description = "RDP Access Port"
      cidr_blocks = var.vpc_cidr_block
    },
    {
      from_port   = 8850
      to_port     = 8850
      protocol    = "tcp"
      description = "tableau Access Port"
      cidr_blocks = var.custom_cidr_block
    },
    {
      from_port   = 8850
      to_port     = 8850
      protocol    = "tcp"
      description = "tableau Access Port"
      cidr_blocks = var.vpc_cidr_block
    }
  ]
  egress_cidr_blocks = ["0.0.0.0/0"]
  egress_with_cidr_blocks = [
    {
      from_port   = 0
      to_port     = 65535
      protocol    = "-1"
      description = "All ports"
      # cidr_blocks = var.vpc_cidr_block
    },
  ]
  tags = var.resource_tags
}
