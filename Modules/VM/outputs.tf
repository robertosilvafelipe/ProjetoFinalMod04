output "vm_public_ip" {
  description = "IP público da VM"
  value       = azurerm_public_ip.vm_pip.ip_address
}

output "vm_private_ip" {
  description = "IP privado da VM"
  value       = azurerm_network_interface.vm_nic.private_ip_address
}
