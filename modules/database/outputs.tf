
output "db_instance_endpoint" {
  description = "RDS endpoint"
  value       = aws_db_instance.main.endpoint
}

output "db_instance_address" {
  description = "RDS address"
  value       = aws_db_instance.main.address
}

output "db_instance_id" {
  description = "RDS instance ID"
  value       = aws_db_instance.main.id
}
