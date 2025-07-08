variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
}

variable "tag" {
  description = "The tag for the EC2 instance"
  type        = string
}

variable "location" {
  description = "The AWS region"
  type        = string
  default     = "us-east-1"
}
