output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "List of all VPC ids"

}
output "public_subnets" {
 value = module.vpc.public_subnets
 description = "Public subnets"
}  

output "private_subnets" {
 value = module.vpc.private_subnets
 description = "Private subnets"
}  
