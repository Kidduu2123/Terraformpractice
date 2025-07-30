module "m1" {
source = "./config"
filename = "1234.txt"
content = "content from module1"
}



output "created_file_from_module" {
  value = module.m1.created_file
}
