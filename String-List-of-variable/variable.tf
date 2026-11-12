variable "region" {
  type = string
  default = "us-east-1"
}

variable "subnet_cidrblock" {
  type = list(string)
  default = [ "10.0.0.0/24", "10.0.1.0/24" ]
}