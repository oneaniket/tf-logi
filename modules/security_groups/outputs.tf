output "security_group_id" {
  description = "Security Group ID"
  value       = module.security_groups.security_group_id
}

output "security_group_name" {
  description = "Security Group Name"
  value       = module.security_groups.security_group_name
}
