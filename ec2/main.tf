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
  user_data               = file("ec2-provision.sh")

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
  ]
}
