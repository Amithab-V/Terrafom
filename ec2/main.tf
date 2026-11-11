provider "aws" {
  region = "us-east-1"
}   

resource "aws_instance" "Rozario_ec2" {
  ami = "   "
  instance_type = "t2.micro"

    tags = {
        Name = "dev"

    }
}