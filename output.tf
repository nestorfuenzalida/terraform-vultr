#Copyright (c) 2024 Nestor Fuenzalida
#All rights reserved.
#
#This source code is licensed under the MIT-style license found in the
#LICENSE file in the root directory of this source tree.

output "ip_address" {
  value = module.ec.ip_address
}