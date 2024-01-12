output "id" {
  description = "ID"
  value       = aws_instance.web.id
}

output "public_ip" {
  description = "Public IP"
  value       = aws_instance.web.public_ip
}

output "tenancy" {
  description = "Tenancy"
  value       = aws_instance.web.tenancy
}
