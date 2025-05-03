output "sg_id" {
  value       = aws_security_group.allow_all_ipv4.id
  description = "List of all SG ids"

}
