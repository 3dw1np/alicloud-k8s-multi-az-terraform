resource "alicloud_cs_kubernetes" "k8s" {
  name_prefix           = "${var.name}-cs"
  vswitch_ids           = "${var.vswitch_ids}"
  new_nat_gateway       = false
  master_instance_types = ["${var.master_instance_type}", "${var.master_instance_type}", "${var.master_instance_type}"]
  worker_instance_types = ["${var.worker_instance_type}", "${var.worker_instance_type}", "${var.worker_instance_type}"]
  worker_numbers        = "${var.worker_numbers}"
  password              = "${var.ssh_password}"
  pod_cidr              = "176.16.0.0/16"
  service_cidr          = "176.19.0.0/20"
  node_cidr_mask        = 25
  enable_ssh            = true
  slb_internet_enabled  = true
  install_cloud_monitor = true
  cluster_network_type  = "terway"
	kube_config = "${var.kube_cli["cfg"]}"
	client_cert = "${var.kube_cli["client_cert"]}"
	client_key = "${var.kube_cli["client_key"]}"
	cluster_ca_cert = "${var.kube_cli["k8s_ca"]}"
}