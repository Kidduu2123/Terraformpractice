#variable "names" {
#default = ["alice", "bob", "carol"]
#}

#output "upper_names" {
#value = [for name in var.names : upper(name)]
#}

#variable "users" {
#default = {
#alice = 22
#bob = 20
#carol = 25
#}
#}

#output "mapusers" {
#value = {for name,age in var.users : name => age + 5}
#}

variable "nums" {
  default = [1, 2, 3, 4, 5, 6]
}

output "even_numbers" {
  value = [for n in var.nums : n if n % 2 == 0]
}

