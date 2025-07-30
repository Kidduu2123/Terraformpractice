resource "random_string" "string" {
length = 8
special = true
}


output "restored_string" {
  value = random_string.string.result
}

