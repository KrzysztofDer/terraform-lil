variable "newvariable" {
  type = "string"
  default = "thisvalue"
}

variable "maptype" {
  type = "map"
  default = {
    subnet1 = "kd-subnet-1"
    subnet2 = "kd-subnet-2"
  }
}

variable "listtype" {
  type = "list"
  default = ["kd-subnet-1", "kd-subnet-2"]
}

variable "coffee_type" {
  default = "nothing"
  description = "Identyfing coffee levels"
}

//output variables

output "first_output" {
  value = "this is value through execution"
}

output "aws_cidr_subnet1" {
  value = "${var.maptype.subnet1}"
}

