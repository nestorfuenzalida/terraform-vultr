resource "vultr_startup_script" "startup_script" {
  name = "startup_script"
  script = base64encode(file(var.STARTUP_SCRIPT))
}

variable "STARTUP_SCRIPT" {}