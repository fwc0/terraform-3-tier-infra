output "vpc_id" {
  value = aws_vpc.dev.id
  description = "The VPC ID"
}

output "pub_subnet_id" {
    value = aws_subnet.public.id
    description = "The ID of the subnet"
}
output "priv_subnet_id" {
    value = aws_subnet.private.id
    description = "The ID of the subnet"
}
