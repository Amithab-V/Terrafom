terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>5.0"
    }
  }
}

resource "aws_instance" "myec2" {
 for_each = var.map_of_objects
 ami = "ami-1234567890"
 instance_type = each.value.size
    tags = {
      name = each.value.name
    }
}
