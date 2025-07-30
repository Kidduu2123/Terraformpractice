resource "local_file" "filecreation" {
filename = "abc.txt"
#content = "first file"
content  = var.inputvar
}

