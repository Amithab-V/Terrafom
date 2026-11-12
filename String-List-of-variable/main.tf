terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>5.0"
    }
  }
}

provider "aws" {
    region = var.region
}

resource "aws_vpc" "myvpc" {
 cidr_block = "10.0.0.0/16" 
}
resource "aws_subnet" "my-subnet" {
  count = length(var.subnet_cidrblock)
  vpc_id = aws_vpc.myvpc.id
  cidr_block = var.subnet_cidrblock[count.index]
} 