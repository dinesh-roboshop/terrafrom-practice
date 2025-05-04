module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "mongodb"

  instance_type          = "t3.medium"
  ami                    = data.aws_ami.devops-practice.id
  #key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = [data.aws_ssm_parameter.sg_id.value]
  subnet_id              = local.public_subet_id
  associate_public_ip_address = true
  #user_data               = file("ec2-provision.sh")

tags = var.common_tags

}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "catalogue"

  instance_type          = "t2.micro"
  ami                    = data.aws_ami.devops-practice.id
  #key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = [data.aws_ssm_parameter.sg_id.value]
  subnet_id              = local.public_subet_id
  associate_public_ip_address = true
  #user_data               = file("ec2-provision.sh")

tags = var.common_tags

}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "redis"

  instance_type          = "t2.micro"
  ami                    = data.aws_ami.devops-practice.id
  #key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = [data.aws_ssm_parameter.sg_id.value]
  subnet_id              = local.public_subet_id
  associate_public_ip_address = true
  #user_data               = file("ec2-provision.sh")

tags = var.common_tags

}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "user"

  instance_type          = "t2.micro"
  ami                    = data.aws_ami.devops-practice.id
  #key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = [data.aws_ssm_parameter.sg_id.value]
  subnet_id              = local.public_subet_id
  associate_public_ip_address = true
  #user_data               = file("ec2-provision.sh")

tags = var.common_tags

}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "cart"

  instance_type          = "t2.micro"
  ami                    = data.aws_ami.devops-practice.id
  #key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = [data.aws_ssm_parameter.sg_id.value]
  subnet_id              = local.public_subet_id
  associate_public_ip_address = true
  #user_data               = file("ec2-provision.sh")

tags = var.common_tags

}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "mysql"

  instance_type          = "t3.medium"
  ami                    = data.aws_ami.devops-practice.id
  #key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = [data.aws_ssm_parameter.sg_id.value]
  subnet_id              = local.public_subet_id
  associate_public_ip_address = true
  #user_data               = file("ec2-provision.sh")

tags = var.common_tags

}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "shipping"

  instance_type          = "t2.micro"
  ami                    = data.aws_ami.devops-practice.id
  #key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = [data.aws_ssm_parameter.sg_id.value]
  subnet_id              = local.public_subet_id
  associate_public_ip_address = true
  #user_data               = file("ec2-provision.sh")

tags = var.common_tags

}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "rabbitmq"

  instance_type          = "t2.micro"
  ami                    = data.aws_ami.devops-practice.id
  #key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = [data.aws_ssm_parameter.sg_id.value]
  subnet_id              = local.public_subet_id
  associate_public_ip_address = true
  #user_data               = file("ec2-provision.sh")

tags = var.common_tags

}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "payment"

  instance_type          = "t2.micro"
  ami                    = data.aws_ami.devops-practice.id
  #key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = [data.aws_ssm_parameter.sg_id.value]
  subnet_id              = local.public_subet_id
  associate_public_ip_address = true
  #user_data               = file("ec2-provision.sh")

tags = var.common_tags

}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "dispatch"

  instance_type          = "t2.micro"
  ami                    = data.aws_ami.devops-practice.id
  #key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = [data.aws_ssm_parameter.sg_id.value]
  subnet_id              = local.public_subet_id
  associate_public_ip_address = true
  #user_data               = file("ec2-provision.sh")

tags = var.common_tags

}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "ansible"

  instance_type          = "t2.micro"
  ami                    = data.aws_ami.devops-practice.id
  #key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = [data.aws_ssm_parameter.sg_id.value]
  subnet_id              = local.public_subet_id
  associate_public_ip_address = true
  user_data               = file("ec2-provision.sh")

tags = var.common_tags

}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "web"

  instance_type          = "t2.micro"
  ami                    = data.aws_ami.devops-practice.id
  #key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = [data.aws_ssm_parameter.sg_id.value]
  subnet_id              = local.public_subet_id
  associate_public_ip_address = true
  #user_data               = file("ec2-provision.sh")

tags = var.common_tags

}


module "records" {
  source  = "terraform-aws-modules/route53/aws//modules/records"
  zone_name = var.zone_name

  records = [
    {
      name    = "web"
      type    = "A"
      ttl     = 1
      records = [
        "${module.ec2_instance.public_ip}",
      ]
    },
    {
      name    = "mongodb"
      type    = "A"
      ttl     = 1
      records = [
        "${module.ec2_instance.public_ip}",
      ]
    },
    {
      name    = "catalogue"
      type    = "A"
      ttl     = 1
      records = [
        "${module.ec2_instance.public_ip}",
      ]
    },
    {
      name    = "redis"
      type    = "A"
      ttl     = 1
      records = [
        "${module.ec2_instance.public_ip}",
      ]
    },
    {
      name    = "user"
      type    = "A"
      ttl     = 1
      records = [
        "${module.ec2_instance.public_ip}",
      ]
    },
    {
      name    = "cart"
      type    = "A"
      ttl     = 1
      records = [
        "${module.ec2_instance.public_ip}",
      ]
    },
    {
      name    = "mysql"
      type    = "A"
      ttl     = 1
      records = [
        "${module.ec2_instance.public_ip}",
      ]
    },
    {
      name    = "shipping"
      type    = "A"
      ttl     = 1
      records = [
        "${module.ec2_instance.public_ip}",
      ]
    },
    {
      name    = "rabbitmq"
      type    = "A"
      ttl     = 1
      records = [
        "${module.ec2_instance.public_ip}",
      ]
    },
    {
      name    = "payment"
      type    = "A"
      ttl     = 1
      records = [
        "${module.ec2_instance.public_ip}",
      ]
    },
    {
      name    = "dispatch"
      type    = "A"
      ttl     = 1
      records = [
        "${module.ec2_instance.public_ip}",
      ]
    },
    {
      name    = "ansible"
      type    = "A"
      ttl     = 1
      records = [
        "${module.ec2_instance.public_ip}",
      ]
    },
  ]
}
