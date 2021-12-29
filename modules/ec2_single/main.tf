##Module to deploy EC2
module "ec2" {
  count   = 1
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = var.ec2_name

  ami                    = var.ami_id #ami-00be885d550dcee43
  availability_zone      = var.availability_zone[count.index]
  instance_type          = "c5.4xlarge" ##c3.xlarge ##c5.4xlarge
  key_name               = "terraform-deployment"
  iam_instance_profile   = "terraform-role"
  monitoring             = true
  vpc_security_group_ids = [var.security_group_id]
  subnet_id              = var.private_subnet_id[count.index]
  root_block_device = [
    {
      delete_on_termination = true
      encrypted             = false
      volume_type           = "gp2"
      volume_size           = 100
    }
  ]
  associate_public_ip_address = "false"
  #user_data_base64 = base64encode(local.user_data)
  user_data = file("${path.module}/../../apache2.sh")
  #user_data = file("${path.module}/../../${var.user_data_scripts[count.index]}")
  #user_data = "${local_file.worker_data.content}"

  tags = var.resource_tags

}
