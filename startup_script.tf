#Copyright (c) 2024 Nestor Fuenzalida
#All rights reserved.
#
#This source code is licensed under the MIT-style license found in the
#LICENSE file in the root directory of this source tree.

resource "vultr_startup_script" "startup_script" {
  name = "startup_script"
  script = base64encode(file(var.STARTUP_SCRIPT))
}