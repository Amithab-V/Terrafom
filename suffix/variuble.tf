variable "region" {
 description = "the aws region to deploy resources in"
 type = string 
 default = "us-east-1"
}

variable "bucket_prifix_name" {
  description = "bucket prefix name"
  type = string
  default = "aws-rozario-bucket-1010"
}

variable "tags" {
  description = "tags_name"
  type = map(string)
  default = {
    Project = "aws_rozario_1010"
    owner = "aws-rozario"
  }
}