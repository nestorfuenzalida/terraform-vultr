#Copyright (c) 2024 Nestor Fuenzalida
#All rights reserved.
#
#This source code is licensed under the MIT-style license found in the
#LICENSE file in the root directory of this source tree.

resource "vultr_dns_domain" "my_domain" {
    domain = "nessthor.xyz"
    ip = var.IP_ADDRESS
}