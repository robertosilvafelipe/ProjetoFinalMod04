resource_group_name = "rg-aks-dev"
location            = "East US"
tags = {
  environment = "development"
  project     = "k8s-azure"
}
vnet_name     = "vnet-aks-dev"
address_space = ["10.0.0.0/16"]
subnets = [
  {
    name             = "sub-aks"
    address_prefixes = ["10.0.1.0/24"]
  },
  {
    name             = "sub-pvt"
    address_prefixes = ["10.0.2.0/24"]
  },
  {
    name             = "sub-agic"
    address_prefixes = ["10.0.3.0/24"]
  },
  {
    name             = "sub-capp"
    address_prefixes = ["10.0.6.0/23"]
  }

]
log_analytics_workspace_name = "law-aks-dev"
acr_name                     = "acraksdev"


cluster_name                 = "aks-cluster-dev"
dns_prefix                   = "aks"
default_node_pool_name       = "default"
default_node_pool_node_count = 1
default_node_pool_vm_size    = "Standard_B2s"
environment_name             = "container-app-env-dev"
app_name                     = "nginx-container-app"
infrastructure_subnet_id     = "sub-capp"

