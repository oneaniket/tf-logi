output "instance_id" {
  description = "External Volume ID"
  value       = module.ec2.*.id
}

output "public_ip" {
  description = "External Volume ID"
  value       = module.ec2.*.public_ip
}
