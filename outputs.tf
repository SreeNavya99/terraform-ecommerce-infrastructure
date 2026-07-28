
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
