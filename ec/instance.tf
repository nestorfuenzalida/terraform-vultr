#Copyright (c) 2024 Nestor Fuenzalida
#All rights reserved.
#
#This source code is licensed under the MIT-style license found in the
#LICENSE file in the root directory of this source tree.

resource "vultr_instance" "instance_01" {
  label = "${var.HOSTNAME}-server" #Label as you want
  tags = ["test_instance"]
  plan = "vc2-1c-1gb" #5 USD/mo
  region = "scl" #Chile - Santiago
  os_id = "1743" #Ubuntu 22.04 LTS x64
  hostname = var.HOSTNAME
  enable_ipv6 = true
  disable_public_ipv4 = false
  ssh_key_ids = var.VULTR_INSTANCE_SSH_KEYS
  #firewall_group_id = vultr_firewall_group.firewall_group.id
  script_id = vultr_startup_script.startup_script.id
  backups = "disabled" #Billed Service, uncomment schedule if "enabled"
  #backups_schedule {
  #  type = "daily"
  #}
  ddos_protection = false #Billed Service
  activation_email = false
}