#Copyright (c) 2024 Nestor Fuenzalida
#All rights reserved.
#
#This source code is licensed under the MIT-style license found in the
#LICENSE file in the root directory of this source tree.

/*
resource "vultr_firewall_rule" "firewall_rule" {
  firewall_group_id = vultr_firewall_group.firewall_group.id
  subnet = var.SUBNET
  subnet_size = var.SUBNET_SIZE
  protocol = each.value.protocol
  ip_type = each.value.ip_type
  port = each.value.port
  notes = each.value.notes
  for_each   = {
    for index, rule in var.FIREWALL_RULES:
    rule.port => rule
  }
}*/
