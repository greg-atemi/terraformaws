terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = ">= 2.7.0"
            # region = "eu-central-1"
        }
    }
}

resource "aws_instance" "web" {
    instance_type = var.instance_type
    ami           = var.ami
    
    tags = {
        Name = var.tag_name
    }
}

resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr_block
}

resource "aws_subnet" "mycluster" {
  vpc_id     = var.vpc_cluster_id
  cidr_block = var.subnet_cidr_block
}

