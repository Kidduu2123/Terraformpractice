/*
variable filem{
type = object({
filename = string
content = string
})

default = {

filename = "123.txt"
content = "practice module"
}
}

resource "local_file" "filem" {
filename = var.filem.filename
content = var.filem.content
}


output filem{
value = local_file.filem.filename
}

output "filem_content" {
  value = local_file.filem.content
}
*/
