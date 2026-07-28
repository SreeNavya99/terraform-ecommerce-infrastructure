
output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "public_subnet_1a_id" {
  description = "Public Subnet 1A ID"
  value       = aws_subnet.public_1a.id
}

output "public_subnet_1c_id" {
  description = "Public Subnet 1C ID"
  value       = aws_subnet.public_1c.id
}

output "private_subnet_1a_id" {
  description = "Private Subnet 1A ID"
  value       = aws_subnet.private_1a.id
}

output "private_subnet_1c_id" {
  description = "Private Subnet 1C ID"
  value       = aws_subnet.private_1c.id
}

output "internet_gateway_id" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.igw.id
}

output "nat_gateway_id" {
  description = "NAT Gateway ID"
  value       = aws_nat_gateway.nat.id
}

output "public_route_table_id" {
  description = "Public Route Table ID"
  value       = aws_route_table.public.id
}

output "private_route_table_id" {
  description = "Private Route Table ID"
  value       = aws_route_table.private.id
}
