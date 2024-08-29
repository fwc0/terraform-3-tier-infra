output "vpc_id" {
  value = aws_vpc.dev.id
  description = "The VPC ID"
}

output "aws_security_group_id" {
  value = aws_security_group.dev.id
}