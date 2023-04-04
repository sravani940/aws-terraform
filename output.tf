output "demo_ec2_id" {
  description = "Print the ID of EC2 Instance"
  value       = aws_instance.demo_ec2.id
}

output "demo_ec2_private_ip" {
  description = "Print the Private IP of EC2 Instance"
  value       = aws_instance.demo_ec2.private_ip
}

output "demo_ec2_public_ip" {
  description = "Print the Public IP of EC2 Instance"
  value       = aws_instance.demo_ec2.public_ip
}

output "s3_bucket_name" {
  value = aws_s3_bucket.id
}
output "s3_bucket_region" {
  value = aws_s3_bucket.region
}
output "s3_bucket_versioning" {
  value = aws_s3_bucket.versioning[0].enabled
}

output "rds_instance_id" {
  value = aws_db_instance.id
}

output "rds_port" {
  value = aws_db_instance.port
}

output "rds_username" {
  value = aws_db_instance.username
}

output "rds_password" {
  value = aws_db_instance.password
}

