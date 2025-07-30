terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "2.1.2"
    }
    local = {
      source  = "hashicorp/local"
      version = "1.4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "2.2.1"
    }
  }
}


resource "local_file" "file4" {
filename = "file4.txt"
content = <<EOF
Fourth file
hi
practice
3resources in a single file
EOF
}


resource "random_id" "random_id_one" {
byte_length = 5
}

resource "null_resource" "dummy" {
  triggers = {
    always_run = timestamp()
}
}

