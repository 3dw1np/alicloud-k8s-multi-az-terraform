provider "kubernetes" {			#Make it depends on a another resources
	host = "https://${var.cluster_connection_ip}:6443"
	client_certificate     = "${file("${var.kube_cli["client_cert"]}")}"
	client_key             = "${file("${var.kube_cli["client_key"]}")}"
	cluster_ca_certificate = "${file("${var.kube_cli["k8s_ca"]}")}"
}

module "apps" {
  source = "../../modules/apps"
  cluster_connection_ip = "${var.cluster_connection_ip}"
  db_connection = "${var.db_connection}"
  db_credential = "${var.db_credential}"
  domain_name = "${var.domain_name}"
}