locals {
  public_subet_id = element(split(",", data.aws_ssm_parameter.public_subnet_id.value), 0)
}
