data "aws_ssm_parameter" "vpc_id" {
  name = var.ssm_vpc_id
}

data "aws_ssm_parameter" "listener" {
  name = var.ssm_listener
}

data "aws_ssm_parameter" "private_subnet_a" {
  name = var.ssm_private_subnet_a
}

data "aws_ssm_parameter" "private_subnet_b" {
  name = var.ssm_private_subnet_b
}

data "aws_ssm_parameter" "private_subnet_c" {
  name = var.ssm_private_subnet_c
}