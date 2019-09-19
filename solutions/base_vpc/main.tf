module "vpc" {
  source = "../../modules/vpc"
  name   = "${var.name}"
  cidr   = "${var.cidr}"
  az_list = "${var.az_list}"
}