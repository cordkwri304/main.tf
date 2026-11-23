# Dummy Terraform configuration for testing
terraform {
  required_version = ">= 1.5.0"
}

variable "project_name" {
  type    = string
  default = "dummy-vercel-test"
}

resource "null_resource" "dummy_check" {
  provisioner "local-exec" {
    command = "echo 'Dummy project initialized: ${var.project_name}'"
  }
}

output "status" {
  value = "Ready - ${var.project_name}"
}
