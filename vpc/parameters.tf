resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project}/${var.environment}/vpc"
  type  = "String"
  value = module.vpc.vpc_id
}


resource "aws_ssm_parameter" "public_subnet_id" {
  name  = "/${var.project}/${var.environment}/public_subnets_id"
  type  = "StringList"
  value = join(",",module.vpc.public_subnets)
}


resource "aws_ssm_parameter" "private_subnet_id" {
  name  = "/${var.project}/${var.environment}/private_subnets_id"
  type  = "StringList"
  value = join(",",module.vpc.private_subnets)
}