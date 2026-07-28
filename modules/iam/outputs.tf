

output "ec2_role_name" {
  description = "EC2 IAM Role name"
  value       = aws_iam_role.ec2_role.name
}

output "instance_profile_name" {
  description = "EC2 Instance Profile name"
  value       = aws_iam_instance_profile.ec2_profile.name
}

output "instance_profile_arn" {
  description = "EC2 Instance Profile ARN"
  value       = aws_iam_instance_profile.ec2_profile.arn
}
