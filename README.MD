<!---
Copyright (c) 2024 Nestor Fuenzalida
All rights reserved.

This source code is licensed under the MIT-style license found in the
LICENSE file in the root directory of this source tree.
-->

## Deployment Steps

0. Have Terraform Installed and a Vultr Account (doh!)

1. Set up a [Vultr Personal Access Token, and Permissions](https://my.vultr.com/settings/#settingsapi)

2. Create a file named *"env.tfvars"* at the main folder

3. Add the *"VULTR_API_KEY"* variable, and your Personal Access Token as it´s value:

```bash
VULTR_API_KEY = "<YOUR_API_TOKEN>"
```

4. To initialize, run:

```bash
terraform init
```

5. To create the instance, run:

```bash
terraform plan -var-file="env.tfvars"
terraform apply -var-file="env.tfvars"
```

input ***yes*** when prompted

6. To delete the instance, run:

```bash
terraform destroy -var-file="env.tfvars"
```

input ***yes*** when prompted

## Change Log

### v1.1

- Readme Formatting Fix
- Additional attributes included to the instance template
    - Tags
    - Hostname
    - IPv4 toggle
    - Backups toggle (Billed)
    - DDoS protection toggle (Billed)
    - Activation Email notification toggle
    - Startup Script
  
- Added Firewall Group and Rules
- Added SSH Key configuration (Key UUID needed from Vultr)
- Added Startup Script Folder/File example

### v1.0

*Using Vultr Terraform Provider V2.19.0*

**Single basic instance with the following:**

| Type | Description |
| ------------|---------------|
| Instance | Shared CPU - Regular Cloud Compute |
| CPU | 1 Core |
| RAM | 1gb |
| Region | Santiago - Chile |
| OS | Ubuntu 22.04 LTS x64 |
| Free? | **NO** |

### Useful Links
- [Vultr Terraform Documentation](https://docs.vultr.com/how-to-provision-cloud-infrastructure-on-vultr-using-terraform)
- [Vultr Terraform Provider](https://github.com/vultr/terraform-provider-vultr)
- [Vultr Terraform Provider Docs](https://registry.terraform.io/providers/vultr/vultr/latest/docs)
- [Vultr Instance List with Regions](https://www.vultr.com/api/#tag/plans/operation/list-plans)
- [Vultr OS List](https://www.vultr.com/api/#tag/os/operation/list-os)

### Useful Tips

- Inside *"vultr_instance.tf"* file, label the instance name as you want
- You can also modify the instance specs, if your wallet supports it. Check the links to see available resources.

**and...**


---- **DON´T FORGET TO CONTROL YOUR USAGE TO AVOID UNDESIRED BILLING** ----
