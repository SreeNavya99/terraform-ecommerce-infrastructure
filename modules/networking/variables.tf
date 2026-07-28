
variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "public_subnet_1a_cidr" {
  description = "CIDR block for Public Subnet 1A"
  type        = string
}

variable "public_subnet_1c_cidr" {
  description = "CIDR block for Public Subnet 1B"
  type        = string
}

variable "private_subnet_1a_cidr" {
  description = "CIDR block for Private Subnet 1A"
  type        = string
}

variable "private_subnet_1c_cidr" {
  description = "CIDR block for Private Subnet 1B"
  type        = string
}

variable "az1" {
  description = "Availability Zone 1"
  type        = string
}

variable "az2" {
  description = "Availability Zone 2"
  type        = string
}
