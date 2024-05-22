##https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry

#modules/acr/main.tf
resource "random_string" "acr_suffix" {
  length  = 3
  special = false
  upper   = false
}

resource "azurerm_container_registry" "acr" {
  name                     = "${var.acr_name}${random_string.acr_suffix.result}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  sku                      = "Basic"
  admin_enabled            = true
  tags                     = var.tags
}
