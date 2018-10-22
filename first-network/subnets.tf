resource "aws_subnet" "kd-subnet-1" {
  cidr_block        = "${cidrsubnet(aws_vpc.environment-exaple-one.cidr_block,3 ,1 )}"
  vpc_id            = "${aws_vpc.environment-exaple-one.id}"
  availability_zone = "eu-west-1a"
}

resource "aws_subnet" "kd-subnet-2" {
  cidr_block        = "${cidrsubnet(aws_vpc.environment-exaple-one.cidr_block,2 ,2 )}"
  vpc_id            = "${aws_vpc.environment-exaple-one.id}"
  availability_zone = "eu-west-1b"
}

resource "aws_security_group" "securitygroup-1" {
  vpc_id = "${aws_vpc.environment-exaple-one.id}"

  ingress {
    cidr_blocks = [
      "${aws_vpc.environment-exaple-one.cidr_block}",
    ]

    from_port = 80
    to_port   = 80
    protocol  = "tcp"
  }
}
