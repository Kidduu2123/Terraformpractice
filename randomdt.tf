#resource "random_string" "example_string" {
  #length  = 8
 # special = false
#}

#variable "string_var" {
  #type    = string
 # default = "default-value"
#}

#output "string_output" {
#  value = random_string.example_string.result
#}

#resource "random_integer" "number" {
#min = 100
#max = 150
#keepers = {
#    trigger = var.number_var
#  }
#}

#variable "number_var" {
#type = number
#default = 42
#}

#output "number_ouput" {
#value = random_integer.number.result
#}

#output "input_value_used" {
 # value = var.number_var
#}
#variable "bool_var" {
 # type    = bool
  #default = true
#}

#output "bool_output" {
 # value = var.bool_var
#}

#variable "list_var" {
  #type    = list(string)
 # default = ["a", "b", "c"]
#}

#resource "random_shuffle" "example_list" {
  #input        = var.list_var
 # result_count = length(var.list_var)
#}

#output "list_input_used" {
 # value = var.list_var
#}

#output "shuffled_list" {
 # value = random_shuffle.example_list.result
#}
#variable "set_var" {
 # type    = set(string)
 # default = ["cat", "dog", "mouse"]
#}

#output "set_output" {
 # value = var.set_var
#}

