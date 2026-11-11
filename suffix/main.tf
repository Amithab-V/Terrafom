terraform {
  required_version = ">= 1.5.0"
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = ">= 5.0.0"
      }
       random = {
        source = "hashicorp/random"
        version = ">= 3.0.0"
       }
    }

}

provider "aws" {
    region = var.region
}

resource "random_id" "suffix" {
    byte_length = 3
}

resource "aws_s3_bucket" "rozarios3" {
    bucket = "${var.bucket_prifix_name}-${random_id.suffix.hex}"
}