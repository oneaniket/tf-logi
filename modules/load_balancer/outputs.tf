output "http_tcp_listener_arns" {
  description = "http listener ARN"
  value       = module.alb.http_tcp_listener_arns
}

output "lb_arn" {
  description = "LB ARN"
  value       = module.alb.lb_arn
}
