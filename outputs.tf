//// networking related
//
output "windows_app_startup_script" {
  value       = var.app ? data.template_file.app_startup_script.rendered : ""
  description = "startup script when instance boots"
}

output "database_startup_script" {
  value       = var.database ? data.template_file.database_startup_script.rendered : ""
  description = "startup script when instance boots"
}

output "web_startup_script" {
  value       = var.web ? data.template_file.web_startup_script.rendered : ""
  description = "startup script when instance boots"
}

//// linux vm related
//
output "linuxvm-web-public_ip_address" {
  value       = azurerm_linux_virtual_machine.web[*].public_ip_address
  description = "Azure Linux VM: Azure Linux VM Web Server public IP address"
}

output "linuxvm-web-private_ip_address" {
  value       = azurerm_linux_virtual_machine.web[*].private_ip_address
  description = "Azure Linux VM: Azure Linux VM Web Server private IP address"
}

// output "linuxvm-app-public_ip_address" {
//   value       = azurerm_linux_virtual_machine.app.public_ip_address
//   description = "Azure Linux VM: Azure Linux VM App Server public IP address"
// }

// output "linuxvm-db-public_ip_address" {
//   value       = azurerm_linux_virtual_machine.db.public_ip_address
//   description = "Azure Linux VM: Azure Linux VM DB Server public IP address"
// }
