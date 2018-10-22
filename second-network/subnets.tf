resource "aws_subnet" "${var.maptype.subnet1}" {
  cidr_block        = "${cidrsubnet(aws_vpc.environment-exaple-two.cidr_block,3 ,1 )}"
  vpc_id            = "${aws_vpc.environment-exaple-two.id}"
  availability_zone = "eu-west-1a"
}

resource "aws_subnet" "${var.maptype.subnet2}" {
  cidr_block        = "${cidrsubnet(aws_vpc.environment-exaple-two.cidr_block,2 ,2 )}"
  vpc_id            = "${aws_vpc.environment-exaple-two.id}"
  availability_zone = "eu-west-1b"
}

resource "aws_security_group" "securitygroup-two" {
  vpc_id = "${aws_vpc.environment-exaple-two.id}"

  ingress {
    cidr_blocks = [
      "${aws_vpc.environment-exaple-two.cidr_block}",
    ]

    from_port = 80
    to_port   = 80
    protocol  = "tcp"
  }
}
