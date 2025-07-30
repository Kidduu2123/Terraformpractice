

variable filename{
type = list(string)
default = ["a1.txt","b1.txt","c1.txt"]
}

#resource "local_file" "f4"{
#count = length(var.filename)
#filename = var.filename[count.index]
#content = "test"
#}

resource "local_file""f9"{
filename = each.value
for_each = toset(var.filename)
content = "test"
}


