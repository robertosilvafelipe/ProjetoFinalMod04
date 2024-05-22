# backend.tf
//Backend e Workspace:
##Utilizando aqui o Storage Account configurado abaixo para guardar o state do terraform. Ele cria ou um container e um arquivo chamado
#tfstate para armazenar os dados de estado do terraform. 
terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraformstate"
    storage_account_name = "stgterraformstate19"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    //lock_duration        = "60s" # Define o tempo de expiração do bloqueio para 60 segundos
  }
}