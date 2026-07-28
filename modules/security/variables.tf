

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where security groups will be created"
  type        = string
}

variable "my_ip" {
  description = "Public IP allowed to SSH into EC2 (CIDR format)"
  type        = string
}
