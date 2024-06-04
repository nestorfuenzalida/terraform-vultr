#Copyright (c) 2024 Nestor Fuenzalida
#All rights reserved.
#
#This source code is licensed under the MIT-style license found in the
#LICENSE file in the root directory of this source tree.

variable "VULTR_API_KEY" {
  sensitive = true
  type = string
}
variable "SUBNET" {
  type = string
}
variable "SUBNET_SIZE" {
  type = number
}
variable "VULTR_INSTANCE_SSH_KEYS" {
  type = any
}
variable "STARTUP_SCRIPT" {
  type = string
}
variable "FIREWALL_RULES" {
  type = list(object({
    protocol = string
    ip_type = string
    port = number
    notes = string
  }))
  default = [
    {
      protocol = "tcp"
      ip_type = "v4"
      port = "22"
      notes = "SSH access"
    },
    {
      protocol = "tcp"
      ip_type = "v4"
      port = "80"
      notes = "HTTP access"
    }
  ]
}