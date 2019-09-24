variable "name" {
  description = "Solution Name"
}

variable "cidr" {
  description = "CIDR range to use for the VPC"
}

variable "az_list" {
  description = "List of availability zones to use"
  default     = []
}
