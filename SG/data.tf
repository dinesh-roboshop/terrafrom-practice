data "aws_ami" "devops-practice" {
  most_recent = true

  filter {
    name   = "Root device type"
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
