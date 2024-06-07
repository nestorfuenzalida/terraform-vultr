#Copyright (c) 2024 Nestor Fuenzalida
#All rights reserved.
#
#This source code is licensed under the MIT-style license found in the
#LICENSE file in the root directory of this source tree.

module "ec" {
  source = "./ec"
  VULTR_API_KEY = var.VULTR_API_KEY
  SUBNET = var.SUBNET
  SUBNET_SIZE = var.SUBNET_SIZE
  VULTR_INSTANCE_SSH_KEYS = var.VULTR_INSTANCE_SSH_KEYS
  STARTUP_SCRIPT = var.STARTUP_SCRIPT
}

module "domain" {
  source = "./domain"
  VULTR_API_KEY = var.VULTR_API_KEY
  IP_ADDRESS = module.ec.ip_address
  DOMAIN = var.DOMAIN
}