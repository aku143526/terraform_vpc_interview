output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.tf_vpc.id
}

output "public_subnet_ids" {
  description = "Named public subnet IDs"
  value = {
    for index, subnet in aws_subnet.public_subnet :
    "public_subnet_${index + 1}" => subnet.id
  }
}

output "private_subnet_ids" {
  description = "Named private subnet IDs"
  value = {
    for index, subnet in aws_subnet.private_subnet :
    "private_subnet_${index + 1}" => subnet.id
  }
}