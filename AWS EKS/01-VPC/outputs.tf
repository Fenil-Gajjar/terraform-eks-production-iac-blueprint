output "private_zone1_id" {
  value = aws_subnet.private_zone1.id
}

output "private_zone2_id" {
  value = aws_subnet.private_zone2.id
}

output "public_zone1_id" {
  value = aws_subnet.public_zone1.id
}

output "public_zone2_id" {
  value = aws_subnet.public_zone2.id
}

output "nat_gateway_id" {
  value = aws_nat_gateway.nat.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.igw.id
}

output "private_route_table_id" {
  value = aws_route_table.private.id
}

output "public_route_table_id" {
  value = aws_route_table.public.id
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "private_subnet_zone1_id" {
  value = aws_subnet.private_zone1.id
}

output "private_subnet_zone2_id" {
  value = aws_subnet.private_zone2.id
}