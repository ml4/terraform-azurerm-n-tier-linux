variable "prefix" {
  type        = string
  description = "Main prefix for all objects"
}

variable "rg_name" {
  type        = string
  description = "Resource group name"
}

variable "location" {
  type        = string
  description = "Location to deploy to"
  default     = "West Europe"
}

variable "subnet_id" {
  type        = string
  description = "ID of a single vnet subnet"
}

variable "instance_config" {
  type = object({
    vm_name                      = string
    os_publisher                 = string
    os_offer                     = string
    os_sku                       = string
    os_version                   = string
    os_disk_storage_account_type = string
    machine_size                 = string
    admin_username               = string
    admin_password               = string
  })
  default = {
    vm_name                      = "azure-linuxvm"
    os_publisher                 = "Canonical"
    os_offer                     = "UbuntuServer"
    os_sku                       = "18.04-LTS"
    os_version                   = "latest"
    os_disk_storage_account_type = "Standard_LRS"
    machine_size                 = "Standard_D2_v4"
    admin_username               = "ubuntu"
    admin_password               = ""
  }
}

variable "disable_password_authentication" {
  type = bool
  description = "Set password auth on or off.  Needs to be false for admin_password to be set"
  default = false
}