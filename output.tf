# outputs.tf
output "ec2_public_ip" {
  value       = module.ec2.public_ip
  description = "Public IP address of the EC2 instance"
}

output "s3_bucket_name" {
  value       = module.s3.bucket_name
  description = "Name of the S3 bucket"
}