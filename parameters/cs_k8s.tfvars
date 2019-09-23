name = "k8s"
vpc_id = "vpc-t4nqdizwkz6cl347s4bpj"
vswitch_ids = ["vsw-rj9k4d94a5qzzt7u2r7sg", "vsw-rj97lk34sa7rhm2sleoen", "vsw-rj9bidbd1k7328hl4yhyi"]
vswitch_cidrs = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]
master_instance_type = "ecs.n4.small"
worker_instance_type = "ecs.n4.small"
worker_numbers = [1, 2, 3]
ssh_password = "789636Az&"
kube_cli = {
  cfg = "~/.kube/config"
  client_cert = "~/.kube/client-cert.pem"
  client_key = "~/.kube/client-key.pem"
  k8s_ca = "~/.kube/cluster-ca-cert.pem"
}
db_credential = {
  username = "mysqlroot"
  password = "Password#3"
}