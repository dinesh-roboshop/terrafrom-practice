resource "aws_security_group" "allow_all_ipv4" {
  name        = "allow-all-ipv4"
  description = "Allow all inbound and outbound IPv4 traffic"
  vpc_id      = data.aws_ssm_parameter.vpc_id.Value
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"        # All protocols
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-all-ipv4"
  }
}
