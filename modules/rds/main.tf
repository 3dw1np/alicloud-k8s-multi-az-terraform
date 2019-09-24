resource "alicloud_db_instance" "default" {
  engine           = "MySQL"
  engine_version   = "5.6"
  instance_type    = "rds.mysql.t1.small"
  instance_storage = "5"
  vswitch_id       = "${var.vswitch_ids[0]}"
  security_ips     = "${var.vswitch_cidrs}" # vswicth used by k8s workers
}

resource "alicloud_db_database" "db" {
  instance_id   = "${alicloud_db_instance.default.id}"
  name          = "demodb"
  character_set = "utf8"
}

resource "alicloud_db_account" "mysqlroot" {
  instance_id = "${alicloud_db_instance.default.id}"
  name        = "${var.db_credential["username"]}"
  password    = "${var.db_credential["password"]}"
}

resource "alicloud_db_account_privilege" "default" {
  instance_id  = "${alicloud_db_instance.default.id}"
  account_name = "${alicloud_db_account.mysqlroot.name}"
  privilege    = "ReadWrite"
  db_names     = ["${alicloud_db_database.db.name}"]
}
