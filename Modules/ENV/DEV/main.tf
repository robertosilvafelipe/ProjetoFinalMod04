provider "azurerm" {
  features {
    client_id       = var.client_id
    client_secret   = var.client_secret
    tenant_id       = var.tenant_id
    subscription_id = var.subscription_id

  }
}

module "resource_group" {
  source              = "../../modules/rg"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

module "vnet" {
  source              = "../../modules/vnet"
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  tags                = var.tags
}

module "subnet" {
  source               = "../../modules/snet"
  resource_group_name  = module.resource_group.resource_group_name
  virtual_network_name = module.vnet.vnet_name
  subnets              = var.subnets
}

module "log_analytics_workspace" {
  source                       = "../../modules/law"
  log_analytics_workspace_name = var.log_analytics_workspace_name
  location                     = var.location
  resource_group_name          = module.resource_group.resource_group_name
  tags                         = var.tags
}

module "acr" {
  source              = "../../modules/acr"
  acr_name            = var.acr_name
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  tags                = var.tags
}

module "aks" {
  source                       = "./modules/aks"
  cluster_name                 = var.cluster_name
  location                     = var.location
  resource_group_name          = module.resource_group.resource_group_name
  dns_prefix                   = var.dns_prefix
  default_node_pool_name       = var.default_node_pool_name
  default_node_pool_node_count = var.default_node_pool_node_count
  default_node_pool_vm_size    = var.default_node_pool_vm_size
  log_analytics_workspace_id   = module.log_analytics_workspace.log_analytics_workspace_id
  tags                         = var.tags
}
