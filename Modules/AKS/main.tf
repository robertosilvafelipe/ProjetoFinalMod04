##Exemplo para implantar o applicativo 
#https://learn.microsoft.com/pt-br/azure/aks/learn/quick-kubernetes-deploy-terraform?tabs=bash&pivots=development-environment-azure-cli

#ALguns blocos retirei daqui
#https://stacksimplify.com/azure-aks/create-aks-cluster-using-terraform/

#Alguns insights
#https://medium.com/@adilsonbna/creating-aks-cluster-in-5min-using-terraform-63841d1e8912


# modules/aks/main.tf
resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = var.default_node_pool_name
    node_count = var.default_node_pool_node_count
    vm_size    = var.default_node_pool_vm_size
  }

  identity {
    type = "SystemAssigned"
  }

# Add On Profiles
#  addon_profile {
#    ingress_application_gateway {
#       enabled                    = true
#       subnet_id                  = var.agic_subnet_id
#      application_gateway_id     = var.application_gateway_id
#      enable_private_ip          = var.enable_private_ip
#   }
#  }

  network_profile {
    network_plugin    = "azure"
    load_balancer_sku = "standard"
  }

  tags = var.tags
}
