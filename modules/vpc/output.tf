output "vpc_id" {
  value = aws_vpc.name.id
}
output "vpc_arn" {
  value = var.vpc_name
}
output "aws_internet_gateway" {
  value = aws_internet_gateway.name.id 
}