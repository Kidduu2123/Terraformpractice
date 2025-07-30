variable "filea" {
  type    = string
  default = "file a created from jenkins"
}

variable "fileb" {
  type    = string
  default = "file b created from jenkins"
}

resource "local_file" "filea" {
  filename = "${path.module}/mydir/filea.txt"
  content  = var.filea
}

resource "local_file" "fileb" {
  filename = "${path.module}/mydir/fileb.txt"
  content  = var.fileb
}


