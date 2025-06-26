variable "region" {
  description = "Name of the region"
  type        = string
  default     = "ap-south-1"
}

variable "environment" {
  description = "Name of the environment. E.g., stage,demo,prod"
  type        = string
  default     = "demo"
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "interview"
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "vpc"
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames in the VPC"
  type        = bool
  default     = true
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones to deploy subnets"
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
}
