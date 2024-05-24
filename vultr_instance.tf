#Copyright (c) 2024 Nestor Fuenzalida
#All rights reserved.
#
#This source code is licensed under the MIT-style license found in the
#LICENSE file in the root directory of this source tree.

resource "vultr_instance" "instance_01" {
  label = "prefix-username-server" #Label as you want
  plan = "vc2-1c-1gb" #5 USD/mo
  region = "scl" #Chile - Santiago
  os_id = "1743" #Ubuntu 22.04 LTS x64
  enable_ipv6 = true
}