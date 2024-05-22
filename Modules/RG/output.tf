output "resource_group_name" {
  description = "O nome do grupo de recursos"
  value       = azurerm_resource_group.rg.name
}

output "resource_group_location" {
  description = "A localização do grupo de recursos"
  value       = azurerm_resource_group.rg.location
}
