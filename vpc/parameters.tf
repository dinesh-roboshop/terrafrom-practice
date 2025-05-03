resource "aws_ssm_parameter" "vpc_id" {
  name  = "VPC id in us-east-1"
  type  = "String"
  value = module.vpc.vpc_id
}