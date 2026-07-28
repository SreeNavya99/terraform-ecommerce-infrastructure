

output "vpc_id" {
  value = module.networking.vpc_id
}

output "public_subnet_1a_id" {
  value = module.networking.public_subnet_1a_id
}

output "public_subnet_1c_id" {
  value = module.networking.public_subnet_1c_id
}

output "private_subnet_1a_id" {
  value = module.networking.private_subnet_1a_id
}

output "private_subnet_1c_id" {
  value = module.networking.private_subnet_1c_id
}

output "autoscaling_group_name" {
  value = module.compute.autoscaling_group_name
}

output "launch_template_id" {
  value = module.compute.launch_template_id
}

output "alb_dns_name" {
  description = "Application Load Balancer DNS name"
  value       = module.alb.alb_dns_name
}

output "db_endpoint" {
  description = "RDS endpoint"
  value       = module.database.db_instance_endpoint
}
