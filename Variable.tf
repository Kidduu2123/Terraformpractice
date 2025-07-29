#input variable from various resources"
variable "cli_values" {
  type = list(string)
  default = []
}

variable "file_values" {
  type = list(string)
  default = []
}

variable "env_values" {
  type    = list(string)
  default = []
}

# Combine all values into one list
locals {
  all_values = concat(
    var.cli_values,
    var.file_values,
    var.env_values
  )
}

# Randomly shuffle values
resource "random_shuffle" "value_picker" {
  input        = local.all_values
  result_count = 3
}

# Output assigned values to imaginary resources
#output "resource_1_value" {
#  value = random_shuffle.value_picker.result[0]
#}

#output "resource_2_value" {
#  value = random_shuffle.value_picker.result[1]
#}

#output "resource_3_value" {
#  value = random_shuffle.value_picker.result[2]
#}
