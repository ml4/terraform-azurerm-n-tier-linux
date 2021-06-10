// az vm image list --offer RHEL --all --location westeurope -o table

// Re module.network-vnet.avn-as-public-subnet_id[0], have a look at https://github.com/ml4/terraform-azurerm-network-vnet

//// three tier arch - set app to false for a web/db 2-tier arch
//
module "n-tier-linux-3tier" {
  source    = "app.terraform.io/ml4-hc/n-tier-linux/azurerm"
  version   = "1.0.23"
  prefix    = "ml4"
  rg_name   = "test_net_rg_linux_3tier"
  location  = "West Europe"
  subnet_id = module.network-vnet.avn-as-public-subnet_id[0]

  web = true
  web_instance_config = {
    vm_name                      = "test-web"
    machine_size                 = "Standard_D2_v4"
    os_publisher                 = "RedHat"
    os_offer                     = "RHEL"
    os_sku                       = "7_9"
    os_version                   = "7.9.2021051701"
    os_disk_storage_account_type = "Standard_LRS"
    admin_username               = "rhel"
    admin_password               = "donotusethispasswordN123_" // obviously don't commit a real password and instead, get it from a secrets manager
  }

  app = true
  app_instance_config = {
    vm_name                      = "test-app"
    machine_size                 = "Standard_D2_v4"
    os_publisher                 = "RedHat"
    os_offer                     = "RHEL"
    os_sku                       = "7_9"
    os_version                   = "7.9.2021051701"
    os_disk_storage_account_type = "Standard_LRS"
    admin_username               = "rhel"
    admin_password               = "donotusethispasswordN123_" // obviously don't commit a real password and instead, get it from a secrets manager
  }

  database = true
  db_instance_config = {
    vm_name                      = "test-db"
    machine_size                 = "Standard_D2_v4"
    os_publisher                 = "RedHat"
    os_offer                     = "RHEL"
    os_sku                       = "7_9"
    os_version                   = "7.9.2021051701"
    os_disk_storage_account_type = "Standard_LRS"
    admin_username               = "rhel"
    admin_password               = "donotusethispasswordN123_" // obviously don't commit a real password and instead, get it from a secrets manager
  }
}
