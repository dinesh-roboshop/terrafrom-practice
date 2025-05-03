module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "web"

  instance_type          = "t2.micro"
  ami                    = data.aws_ami.devops-practice.id
  #key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = [data.aws_ssm_parameter.sg_id.value]
  subnet_id              = local.public_subet_id

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

