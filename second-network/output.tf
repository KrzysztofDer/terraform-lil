//output variables

output "first_output" {
  value = "this is value through execution"
}

output "aws_cidr_subnet1" {
  value = "${aws_subnet.subnet-1.cidr_block}"
}

output "vpc-id" {
  value = "${aws_vpc.environment-exaple-two.id}"
}

output "vpc-cidr" {
  value = "${aws_vpc.environment-exaple-two.cidr_block}"
}
