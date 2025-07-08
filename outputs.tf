output "instance_id" {
  value       = module.ec2.instance_id
  description = "The ID of the created EC2 instance"
  sensitive   = true
}

output "public_ip" {
  value       = module.ec2.public_ip
  description = "The public IP address of the created EC2 instance"
}
