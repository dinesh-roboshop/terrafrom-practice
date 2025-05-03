resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project}/${var.environment}/vpc"
  type  = String
  value = module.vpc.vpc_id
}