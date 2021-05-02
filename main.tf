//// main.tf terraform configuration
//
resource "azurerm_network_interface" "main" {
  name                = "${azurerm_linux_virtual_machine.name}-nic"
  location            = var.location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "main" {
  name                = "${var.prefix}-${var.instance_config.vm_name}"
  resource_group_name = var.rg_name
  location            = azurerm_resource_group.main.location
  size                = var.instance_config.machine_size
  admin_username      = var.instance_config.admin_username
  admin_password      = var.instance_config.admin_password
  network_interface_ids = [
    azurerm_network_interface.main.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = var.instance_config.os_disk_storage_account_type
  }

  // source_image_id can replace this if business packer base images are to be used
  source_image_reference {
    publisher = var.instance_config.os_publisher
    offer     = var.instance_config.os_offer
    sku       = var.instance_config.os_sku
    version   = var.instance_config.os_version
  }
}
