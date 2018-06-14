# Get required data.
# NOTE: This is only needed because it's a demo and we don't have a VPC.
# NOTE: BE CAREFUL - IF YOU'RE USING YOUR DEFAULT VPC THIS MIGHT BE BAD.
data "aws_vpc" "default" {
  default = true
}

data "aws_subnet_ids" "all" {
  vpc_id = "${data.aws_vpc.default.id}"
}

data "aws_security_group" "default" {
  vpc_id = "${data.aws_vpc.default.id}"
  name   = "default"
}
