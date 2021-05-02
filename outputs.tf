//// outputs.tf child module terraform configuration
//// Nomenclature: <d>-<e>-<f>-<g>[-<h>]
//// where
//// d = linked resource abbreviation (some resources in a mod are only there to support a main resource)
//// e = abbreviated resource
//// f = resource name
//// g = resource parameter to output
//// h = resource subparameter if applicable
//
output "alvm-alvm-main-public_ip_address" {
  value       = azurerm_linux_virtual_machine.main.public_ip_address
  description = "Azure Linux VM: Azure Linux VM public IP address"
}
