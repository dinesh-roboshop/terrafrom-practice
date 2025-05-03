resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project}/${var.environment}/vpc"
  type  = "string"
  value = module.vpc.vpc_id
}