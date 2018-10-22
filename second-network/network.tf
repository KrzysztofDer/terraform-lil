resource "aws_vpc" "environment-exaple-two" {
  cidr_block           = "${var.aws_ip_cird_range}"
  enable_dns_hostnames = true
  enable_dns_support   = true


  tags {
    Name = "${var.vpc_name}"
  }
}
