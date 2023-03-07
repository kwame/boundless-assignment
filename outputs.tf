#output "security_group_id" {
#  description = "The ID of the security group"
#  value       = aws_security_group.id
#}

output "vpc_id" {
  description = "fargate-vpc"
  value       = module.vpc.vpc_id
}

output "vpc_arn" {
  description = "fargate-vpc"
  value       = module.vpc.vpc_arn
}

output "vpc_cidr_block" {
  description = "fargate-vpc"
  value       = module.vpc.vpc_cidr_block
}

output "default_security_group_id" {
  description = "The ID of the security group created by default on VPC creation"
  value       = module.vpc.default_security_group_id
}

# output "cluster_arn" {
#   description = "ARN that identifies the cluster"
#   value       = data.ecs.cluster_arn
# }

# output "cluster_id" {
#   description = "ID that identifies the cluster"
#   value       = data.ecs.cluster_id
# }

# output "cluster_name" {
#   description = "Name that identifies the cluster"
#   value       = data.ecs.cluster_name
# }
