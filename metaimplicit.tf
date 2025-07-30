resource "local_file" "file7" {
filename = "f4.txt"
content = "practice"
}







#resource "local_file" "file8" {
#filename = "f2.txt"
#content = "practice"
#}

#resource "local_file" "file9" {
#filename = "f3.txt"
#content = "hello"
#depends_on =[local_file.file7,local_file.file8]
#}

