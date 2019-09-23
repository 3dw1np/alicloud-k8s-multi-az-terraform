output "cluster_connection_ip" {
  value = "${module.cs.cluster_connection_ip}"
}
output "db_connection" {
  value = "${module.rds.db_connection}"
}