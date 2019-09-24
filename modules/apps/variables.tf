variable "cluster_connection_ip" {
  description = "Cluster Master node ssh ip"
}

variable "db_connection" {
  description = "Database connection"
}

variable "db_credential" {
  description = "Database credential for RDS"
  default = {
    username = "root"
    password = "password"
  }
}

variable "domain_name" {
  description = "Domain name to add records"
}
