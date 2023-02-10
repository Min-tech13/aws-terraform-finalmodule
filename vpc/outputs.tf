output public_subnets {
  value       = aws_subnet.public_subnets.*.id
  sensitive   = true
  description = "outputs of public subnets id "
}
 
output vpc_ids {
  value       = aws_vpc.main.id
  sensitive   = true
  description = "outputs of vpc id "
}

output private_subnets {
  value       = aws_subnet.private_subnets.*.id
  sensitive   = true
  description = "outputs of public subnets id "
}