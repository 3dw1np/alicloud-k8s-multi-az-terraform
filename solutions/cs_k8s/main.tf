module "cs" {
  source = "../../modules/cs"
  name   = "${var.name}"
  vpc_id = "${var.vpc_id}"
  vswitch_ids = "${var.vswitch_ids}"
  master_instance_type = "${var.master_instance_type}"
  worker_instance_type = "${var.worker_instance_type}"
  worker_numbers = "${var.worker_numbers}"
  ssh_password = "${var.ssh_password}"
  kube_cli = "${var.kube_cli}"
}