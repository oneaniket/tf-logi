module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "~> 6.0"

  name = "my-alb"

  load_balancer_type = "application"
  #  internal = "true"

  vpc_id = var.vpc_id
  #  subnets            = var.private_subnet_id
  subnets         = [var.public_subnet_id[0], var.public_subnet_id[1]] #atleast 2 subnets in two AZ's are required
  security_groups = [var.security_group_id]

  #access_logs = {
  #  bucket = "tableau-lb-log-1"
  #}

  target_groups = [
    {
      name_prefix      = "pref-"
      backend_protocol = "HTTP"
      backend_port     = 80
      target_type      = "instance"
      targets = [
        {
          target_id = var.alb_instance_id[0]
          port      = 80
        }
        # {
        #   target_id = "i-08b10c267e8e67cfa"
        #   port = 80
        # },
        # {
        #   target_id = "i-0f3ad1c657f97b7d3"
        #   port = 80
        # }
      ]
    }
  ]

  #  https_listeners = [
  #    {
  #      port               = 443
  #      protocol           = "HTTPS"
  #      certificate_arn    = "arn:aws:iam::123456789012:server-certificate/test_cert-123456789012"
  #      target_group_index = 0
  #    }
  #  ]

  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0
    }
  ]

  tags = var.resource_tags
}
