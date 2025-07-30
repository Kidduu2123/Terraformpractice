variable "servers" {
  type = map(list(string))
  default = {
    dev  = ["dev1", "dev2"]
    prod = ["prod1", "prod2", "prod3"]
  }
}

output "dev_servers" {
  value = var.servers["dev"]
}

output "second_prod_server" {
  value = var.servers["prod"][1]
}

