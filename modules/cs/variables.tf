variable "name" {
  description = "Solution Name"
}

variable "vpc_id" {
  description = "Id of the VPC where to deploy the resources"
}

variable "vswitch_ids" {
  description = "Ids of the vswitchs"
  default     = []
}

variable "master_instance_type" {
  description = "Instance type of master nodes"
  default     = "ecs.n4.small"
}

variable "worker_instance_type" {
  description = "Instance type of worker nodes"
  default     = "ecs.n4.small"
}

variable "worker_numbers" {
  description = "Number of worker nodes"
  default     = [1, 2, 3]
}

variable "ssh_password" {
  description = "Ssh password for the cluster node"
}

variable "kube_cli" {
  description = "K8S config & key files output path in your local machine"
  default = {
    cfg         = "~/.kube/config"
    client_cert = "~/.kube/client-cert.pem"
    client_key  = "~/.kube/client-key.pem"
    k8s_ca      = "~/.kube/cluster-ca-cert.pem"
  }
}
