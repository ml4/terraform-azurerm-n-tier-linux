# terraform-azurerm-linux-vm
Terraform child module to manage creation of generic linux VMs.

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |
| [azurerm_network_interface.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_public_ip.public_ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_resource_group.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_disable_password_authentication"></a> [disable\_password\_authentication](#input\_disable\_password\_authentication) | Set password auth on or off.  Needs to be false for admin\_password to be set | `bool` | `false` | no |
| <a name="input_instance_config"></a> [instance\_config](#input\_instance\_config) | n/a | <pre>object({<br>    vm_name                      = string<br>    os_publisher                 = string<br>    os_offer                     = string<br>    os_sku                       = string<br>    os_version                   = string<br>    os_disk_storage_account_type = string<br>    machine_size                 = string<br>    admin_username               = string<br>    admin_password               = string<br>  })</pre> | <pre>{<br>  "admin_password": "",<br>  "admin_username": "ubuntu",<br>  "machine_size": "Standard_D2_v4",<br>  "os_disk_storage_account_type": "Standard_LRS",<br>  "os_offer": "UbuntuServer",<br>  "os_publisher": "Canonical",<br>  "os_sku": "18.04-LTS",<br>  "os_version": "latest",<br>  "vm_name": "azure-linuxvm"<br>}</pre> | no |
| <a name="input_location"></a> [location](#input\_location) | Location to deploy to | `string` | `"West Europe"` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Main prefix for all objects | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Resource group name | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | ID of a single vnet subnet | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alvm-alvm-main-public_ip_address"></a> [alvm-alvm-main-public\_ip\_address](#output\_alvm-alvm-main-public\_ip\_address) | Azure Linux VM: Azure Linux VM public IP address |
<!-- END_TF_DOCS -->
