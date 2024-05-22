# modules/vnet/outputs.tf
output "vnet_id" {
  description = "ID da VNET"
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  description = "Nome da VNET"
  value       = azurerm_virtual_network.vnet.name
}

output "vnet_address_space" {
  description = "Espaço de endereçamento da VNET"
  value       = azurerm_virtual_network.vnet.address_space
}
