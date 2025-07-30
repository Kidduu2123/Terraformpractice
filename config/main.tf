resource "local_file" "file_from_module" {
  filename = var.filename
  content  = var.content
}

