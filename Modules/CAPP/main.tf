#https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app_environment

resource "azurerm_container_app_environment" "capp_env" {
  name                = var.environment_name
  location            = var.location
  resource_group_name = var.resource_group_name
  log_analytics_workspace_id = var.log_analytics_workspace_id
  infrastructure_subnet_id = var.infrastructure_subnet_id # ID da Subnet de uso do Container APPs 
}

resource "azurerm_container_app" "nginx" {
  name                         = var.app_name
  container_app_environment_id = azurerm_container_app_environment.capp_env.id
  resource_group_name          = var.resource_group_name
  revision_mode                = "Single"

  template {
    container {
      name   = "nginx"
      image  = "nginx:latest"
      cpu    = 0.25
      memory = "0.5Gi"
    }
  }

  ingress {
    external_enabled           = true
    target_port                = 80
    allow_insecure_connections = true

    traffic_weight {
      percentage      = 100
      latest_revision = true
    }
  }

  tags = var.tags
}
