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


#variable "object_var" {
 # type = object({
   # id     = string
   # port   = number
  #  active = bool
 # })

 # default = {
   # id     = "abc123"
   # port   = 8080
  #  active = true
 # }
#}

#resource "null_resource" "example" {
 # triggers = {
   # id     = var.object_var.id
  #  port   = tostring(var.object_var.port)
 #   active = tostring(var.object_var.active)
#  }
#}

#output "object_output" {
 # value = var.object_var
#}
#variable "object_var" {
 # type = object({
  #  id     = string
  #  port   = number
  #  active = bool
 # })

 # default = {
  #  id     = "abc123"
   # port   = 8080
   # active = true
  #}
#}

#resource "random_integer" "object_rand" {
 # min = 1
 # max = 100

  # Use the object as a keeper to re-trigger random when values change
 # keepers = {
  #  id     = var.object_var.id
   # port   = tostring(var.object_var.port)
   # active = tostring(var.object_var.active)
  #}
#}

#output "object_random_output" {
 # value = random_integer.object_rand.result
#}
#variable "tuple_var" {
 # type    = tuple([string, number, bool])
 # default = ["hello", 123, false]
#}

# Convert tuple to list of strings to use in shuffle
#resource "random_shuffle" "tuple_rand" {
 # input = [
 #   var.tuple_var[0],
  #  tostring(var.tuple_var[1]),
   # tostring(var.tuple_var[2])
  #]
  #result_count = 3
#}

#output "shuffled_tuple_output" {
 # value = random_shuffle.tuple_rand.result
#}

#variable "map_var" {
 # type = map(string)
 # default = {
   # key1 = "value1"
  #  key2 = "value2"
 # }
#}

#resource "random_shuffle" "map_keys_shuffle" {
 #input        = keys(var.map_var)
 # result_count = length(keys(var.map_var))
#}

#resource "random_shuffle" "map_values_shuffle" {
 # input        = values(var.map_var)
 # result_count = length(values(var.map_var))
#}

#output "original_map" {
#  value = var.map_var
#}

#output "shuffled_keys" {
#  value = random_shuffle.map_keys_shuffle.result
#}

#output "shuffled_values" {
#  value = random_shuffle.map_values_shuffle.result
#}

