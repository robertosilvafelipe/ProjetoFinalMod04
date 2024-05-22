# modules/container_app/outputs.tf
output "container_app_id" {
  description = "ID do Container App"
  value       = azurerm_container_app.nginx.id
}

output "container_app_fqdn" {
  description = "FQDN do Container App"
  value       = azurerm_container_app.nginx.latest_revision_fqdn
}

output "container_app_environment_id" {
  description = "ID do Ambiente do Container App"
  value       = azurerm_container_app_environment.capp_env.id
}
