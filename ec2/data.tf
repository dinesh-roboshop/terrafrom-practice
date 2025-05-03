data "aws_ami" "devops-practice" {
  most_recent = true

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice"]
  }


  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["973714476881"] # Canonical
}

data "aws_ssm_parameter" "sg_id" {
  name = "/${var.project}/${var.environment}/sg_allow_all"
}

data "aws_ssm_parameter" "public_subnet_id" {
  name = "/${var.project}/${var.environment}/public_subnets_id"
}
