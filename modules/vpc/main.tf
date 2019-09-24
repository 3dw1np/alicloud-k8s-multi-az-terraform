resource "alicloud_vpc" "default" {
  name       = "${var.name}"
  cidr_block = "${var.cidr}"
}

resource "alicloud_nat_gateway" "nat_gateway" {
  vpc_id        = "${alicloud_vpc.default.id}"
  specification = "Small"

  depends_on = ["alicloud_vswitch.default"]
}

resource "alicloud_eip" "default" {
  bandwidth = "5"
  count     = "${length(var.az_list)}"
}

resource "alicloud_eip_association" "default" {
  allocation_id = "${element(alicloud_eip.default.*.id, count.index)}"
  instance_id   = "${alicloud_nat_gateway.nat_gateway.id}"
  count         = "${length(var.az_list)}"
}

resource "alicloud_snat_entry" "default" {
  snat_table_id     = "${alicloud_nat_gateway.nat_gateway.snat_table_ids}"
  source_vswitch_id = "${element(alicloud_vswitch.default.*.id, count.index)}"
  snat_ip           = "${element(alicloud_eip.default.*.ip_address, count.index)}"
  count             = "${length(var.az_list)}"
}

resource "alicloud_vswitch" "default" {
  name              = "${var.name}_${count.index}"
  vpc_id            = "${alicloud_vpc.default.id}"
  cidr_block        = "${cidrsubnet(var.cidr, 16, count.index)}"
  availability_zone = "${var.az_list[count.index]}"
  count             = "${length(var.az_list)}"
}
