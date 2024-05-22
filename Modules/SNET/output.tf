output "subnet_ids" {
  description = "Os IDs das subnets"
  value       = [for s in azurerm_subnet.subnet : s.id]
}

output "subnet_names" {
  description = "Os nomes das subnets"
  value       = [for s in azurerm_subnet.subnet : s.name]
}
