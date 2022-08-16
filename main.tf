resource "local_file" "demo1"{
    filename="file1.html"
    content="I am sonam"
}
resource "local_file" "dsemo2"{
    filename=local.name
    content=local.con
}
locals{
    name="abc1.txt"
    con="sonam"
}
resource "random_id" "g-g"{
    byte_length = 8
}
resource "local_file" "tt"{
    filename="${random_id.g-g.hex}"
    content="${random_id.g-g.dec}"
}
variable "str"{
    type=string
    description="Enter the file name"
    default="strng.txt"
}
resource"local_file" "day1"{
    filename=var.str
    content="MCA"
}
variable "no"{
    type=number
    description="enter value"
    default=199
}
resource "local_file" "abc"{
    filename=var.no
    content=1234
}
variable "list"{
    type=list(any)
    description="Enter list"
    default=["sonam",1234,5678]
}
resource "local_file" "def"{
    filename=var.list[1]
    content="34455"
}
output "op-fname"{
    value=local_file.day1.filename
}
