resource "vultr_firewall_rule" "firewall_rule_01" {
  firewall_group_id = vultr_firewall_group.firewall_group_01.id
  protocol = "tcp"
  ip_type = "v4"
  subnet = var.SUBNET
  subnet_size = var.SUBNET_SIZE
  port = "22"
  notes = "SSH restricted access"
}

variable "SUBNET" {}
variable "SUBNET_SIZE" {}