variable "name" {
  description = "Solution Name"
}

variable "vpc_id" {
  description = "Id of the VPC where to deploy the resources"
}

variable "vswitch_ids" {
  description = "Ids of the vswitchs"
}

variable "master_instance_type" {
  description = "Instance type of master nodes"
}

variable "worker_instance_type" {
  description = "Instance type of worker nodes"
}

variable "worker_numbers" {
  description = "Number of worker nodes"
}

variable "ssh_password" {
  description = "Ssh password for the cluster node"
}
variable "kube_cli" {			
  description = "K8S config & key files output path in your local machine"
}