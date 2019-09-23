variable "vswitch_ids" {
  description = "Ids of the vswitchs"
  default = []
}

variable "vswitch_cidrs" {
  description = "CIDRs of the vswitchs"
  default = []
}

variable "kube_cli" {			
  description = "K8S config & key files output path in your local machine"
	default = {
    cfg = "~/.kube/config"
    client_cert = "~/.kube/client-cert.pem"
    client_key = "~/.kube/client-key.pem"
    k8s_ca = "~/.kube/cluster-ca-cert.pem"
	}
}

variable "db_credential" {
  description = "Database credential for RDS"
	default = {
    username = "root"
    password = "password"
	}
}