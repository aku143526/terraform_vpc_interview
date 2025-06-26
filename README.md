AWS VPC Creation using Terraform
## Directory Structure

```
.
├── main.tf                # Example usage
├── variables.tf           # Root input variables
├── outputs.tf             # Root outputs
├── modules/
│   └── vpc/
│       ├── main.tf        # Core module logic
│       ├── variables.tf   # Module inputs
│       ├── outputs.tf     # Module outputs
```
````markdown
# Terraform AWS VPC Module

This repository contains a **reusable Terraform module** to provision a complete VPC infrastructure in AWS. It automates the setup of a VPC, public and private subnets across multiple availability zones, internet and NAT gateways, and route tables.

---

## Features

- Custom VPC with DNS hostnames support
- Public and private subnets across AZs
- Internet Gateway for public subnets
- NAT Gateway(s) for private subnets
- Separate route tables for public and private networks
- Easy-to-use and fully configurable module

---

## Usage

```hcl
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
````

---

## Inputs

| Name                   | Type           | Description                               |
| ---------------------- | -------------- | ----------------------------------------- |
| `vpc_name`             | `string`       | Name of the VPC                           |
| `project_name`         | `string`       | Name of the project                       |
| `environment`          | `string`       | Environment name (e.g., dev, stage, prod) |
| `cidr_block`           | `string`       | CIDR block for the VPC                    |
| `enable_dns_hostnames` | `bool`         | Enable DNS hostnames in the VPC           |
| `public_subnet_cidrs`  | `list(string)` | List of public subnet CIDR blocks         |
| `private_subnet_cidrs` | `list(string)` | List of private subnet CIDR blocks        |
| `availability_zones`   | `list(string)` | List of availability zones                |

---

## Outputs

| Name                 | Description                        |
| -------------------- | ---------------------------------- |
| `vpc_id`             | The ID of the created VPC          |
| `public_subnet_ids`  | Map of public subnet names to IDs  |
| `private_subnet_ids` | Map of private subnet names to IDs |

---

## Getting Started

Make sure you have:

* [Terraform installed](https://developer.hashicorp.com/terraform/downloads)
* AWS CLI configured with appropriate credentials:
  `aws configure`

### Run the following commands:

```
# Initialize the working directory
terraform init
```

```
# See what Terraform will create
terraform plan
```

```
# Apply the configuration (provisions the VPC) 
terraform apply 
#Also include -auto-approve when don't want to get prompt to enter yes to apply the resource
```

```
# When done and want to clean up the resources
terraform destroy
```
