
variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "public_subnet_1a_cidr" {
  type = string
}

variable "public_subnet_1c_cidr" {
  type = string
}

variable "private_subnet_1a_cidr" {
  type = string
}

variable "private_subnet_1c_cidr" {
  type = string
}

variable "az1" {
  type = string
}

variable "az2" {
  type = string
}

variable "aws_region" {
  type = string
}
variable "my_ip" {
  type = string
}


variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "desired_capacity" {
  type    = number
  default = 2
}

variable "min_size" {
  type    = number
  default = 2
}

variable "max_size" {
  type    = number
  default = 4
}

variable "db_password" {
  description = "Database password"
  type        = string
  sensitive   = true
}
