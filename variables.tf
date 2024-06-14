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
variable "HOSTNAME" {
  type = string
}
variable "STARTUP_SCRIPT" {
  type = string
}
variable "DOMAIN" {
  type = string
}