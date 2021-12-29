output "output_vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "public_subnets_id" {
  description = "Public Subnets ID"
  value       = module.vpc.public_subnets
}

output "private_subnets_id" {
  description = "Public Subnets ID"
  value       = module.vpc.private_subnets
}

output "azs" {
  description = "Availibilty Zones"
  value       = module.vpc.azs
}
