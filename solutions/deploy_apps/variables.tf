variable "kube_cli" {			
  description = "K8S config & key files output path in your local machine"
}

variable "cluster_connection_ip" {
  description = "Cluster Master node ssh ip"
}

variable "db_connection" {
  description = "Database connection information"
}

variable "db_credential" {
  description = "Database credential for RDS"
}

variable "domain_name" {
  description = "Domain name to add records"
}