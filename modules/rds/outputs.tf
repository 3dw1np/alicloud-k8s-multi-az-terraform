output "db_connection" {
  value = "${alicloud_db_instance.default.connection_string}"
}
