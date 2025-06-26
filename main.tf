module "vpc" {
  source               = "./modules/vpc"
  environment          = var.environment
  project_name         = var.project_name
  vpc_name             = var.vpc_name
  cidr_block           = var.cidr_block
  enable_dns_hostnames = var.enable_dns_hostnames
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
}