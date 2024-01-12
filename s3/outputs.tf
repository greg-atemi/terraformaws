output "id" {
  description = "ID"
  value       = aws_s3_bucket.s3.id
}

output "website_endpoint" {
  description = "Website endpoint"
  value       = aws_s3_bucket.s3.website_endpoint
}

output "domain_name" {
  description = "Domain name"
  value       = aws_s3_bucket.s3.bucket_domain_name
}