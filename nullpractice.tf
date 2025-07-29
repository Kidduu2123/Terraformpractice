resource "null_resource" "run_script" {
  provisioner "local-exec" {
    command = "echo 'Hello, Terraform!'"
  }
}
