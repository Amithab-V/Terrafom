variable "project_name" {
    type = "sting"
    default = "demo"
}

variable "replicas" {
    type = number
    default = 1
}

resource "null_resource" "example" {
    triggers = {
      project_name = var.project_name
      replicas = var.replicas
    }
  provisioner "local-exec" {
    command = "echo project: ${var.project_name}, replicas: ${var.replicas}"
  }
}