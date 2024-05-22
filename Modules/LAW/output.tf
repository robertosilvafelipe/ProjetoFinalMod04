output "log_analytics_workspace_id" {
  description = "ID do Log Analytics Workspace"
  value       = azurerm_log_analytics_workspace.law.id
}

output "log_analytics_workspace_name" {
  description = "Nome do Log Analytics Workspace"
  value       = azurerm_log_analytics_workspace.law.name
}

output "log_analytics_workspace_primary_shared_key" {
  description = "Chave primária do Log Analytics Workspace"
  value       = azurerm_log_analytics_workspace.law.primary_shared_key
}


