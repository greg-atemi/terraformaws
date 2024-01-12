variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-central-1"
}

variable "vpc_cluster_id" {
  description = "VPC ID"
  type = string
  default = "vpc-0db09c3fd2614aed2"
}

variable "subnet_id" {
  description = "Subnet ID"
  type = string
  default = "subnet-01d6d99fbc5f6c752"
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "172.31.0.0/16"
}

variable "subnet_cidr_block" {
  description = "CIDR block for subnet"
  type        = string
  default     = "172.31.48.0/20"
}

variable "instances_per_subnet" {
  description = "Number of EC2 instances per private subnet"
  type        = number
  default     = 4
}

variable "instance_type" {
  description = "Instance type for EC2 instances"
  type        = string
  default     = "t3.micro"
}

variable "ami" {
  description = "Amazon Machine Image ID"
  type        = string
  default     = "ami-0faab6bdbac9486fb"
}

variable "ec2_tag_name" {
  description = "Tag name"
  type        = string
  default     = "Hello_Greg"
}

variable "bucket_name" {
  description = "Bucket name"
  type        = string
  default     = "greg-bucket2024"
}

variable "bucket_tag_name" {
  description = "Bucket tag name"
  type        = string
  default     = "greg_bucket2024"
}
