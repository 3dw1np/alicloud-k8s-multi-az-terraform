output "db_connections" {
  value = "${alicloud_db_instance.default.connection_string}"
}