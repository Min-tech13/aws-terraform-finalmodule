output public_subnets {
  value       = aws_subnet.public_subnets.*.id
  sensitive   = true
  description = "outputs of public subnets id "
}
 
output vpc {
  type = string
  value       = aws_vpc.main.id
  description = "outputs of vpc id "
}

output private_subnets {
  type =string
  value       = aws_subnet.private_subnets.*.id
  description = "outputs of public subnets id "
}