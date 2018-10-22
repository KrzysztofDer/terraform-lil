variable "vpc_name" {
  type = "string"
  default = "environment-exaple-two"
}

variable "maptype" {
  type = "map"
  default = {
    zone1 = "eu-west-1"
    zone2 = "eu-west-2"
  }
}

variable "zones" {
  type = "list"
  default = ["eu-west-1", "eu-west-2"]
}

variable "coffee_type" {
  default = "nothing"
  description = "Identyfing coffee levels"
}

variable "aws_ip_cird_range" {
  default = "11.0.0.0/16"
  type = "string"
  description = "IP CIRD range got AWS VPC"
}
