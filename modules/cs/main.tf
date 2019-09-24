resource "alicloud_cs_kubernetes" "k8s" {
  name_prefix           = "${var.name}-cs"
  vswitch_ids           = "${var.vswitch_ids}"
  new_nat_gateway       = false
  master_instance_types = ["${var.master_instance_type}", "${var.master_instance_type}", "${var.master_instance_type}"]
  worker_instance_types = ["${var.worker_instance_type}", "${var.worker_instance_type}", "${var.worker_instance_type}"]
  worker_numbers        = "${var.worker_numbers}"
  password              = "${var.ssh_password}"
  pod_cidr              = "172.20.0.0/16"
  service_cidr          = "172.30.0.0/16"
  node_cidr_mask        = 25   # network mask used on pods for each node, ranging from 24 to 28
  enable_ssh            = true # allow to SSH login kubernetes
  slb_internet_enabled  = true # load balancer for API Server
  install_cloud_monitor = true
  cluster_network_type  = "terway" # or flannel
  kube_config           = "${var.kube_cli["cfg"]}"
  client_cert           = "${var.kube_cli["client_cert"]}"
  client_key            = "${var.kube_cli["client_key"]}"
  cluster_ca_cert       = "${var.kube_cli["k8s_ca"]}"
}
