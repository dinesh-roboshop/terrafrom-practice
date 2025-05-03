resource "aws_ssm_parameter" "security_group" {
  name  = "/${var.project}/${var.environment}/sg_allow_all"
  type  = "String"
  value = aws_security_group.allow_all_ipv4.id
}