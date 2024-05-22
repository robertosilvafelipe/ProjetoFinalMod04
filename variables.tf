variable "client_id" {
  description = "ID do cliente (appId) para o Service Principal"
  type        = string
}

variable "client_secret" {
  description = "Senha (password) para o Service Principal"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "ID do tenant para o Service Principal"
  type        = string
}

variable "subscription_id" {
  description = "ID da assinatura do Azure"
  type        = string
}

variable "resource_group_name" {
  description = "O nome do grupo de recursos"
  type        = string
}

variable "location" {
  description = "A localização do grupo de recursos"
  type        = string
}

variable "tags" {
  description = "Tags para o grupo de recursos"
  type        = map(string)
  default     = {}
}

variable "vnet_name" {
  description = "O nome da rede virtual (VNET)"
  type        = string
}

variable "address_space" {
  description = "O espaço de endereçamento da VNET"
  type        = list(string)
}

variable "subnets" {
  description = "Uma lista de mapas que define as subnets"
  type = list(object({
    name             = string
    address_prefixes = list(string)
  }))
}

variable "log_analytics_workspace_name" {
  description = "Nome do Log Analytics Workspace"
  type        = string
}

variable "acr_name" {
  description = "Nome do Azure Container Registry"
  type        = string
}


variable "cluster_name" {
  description = "Nome do cluster Kubernetes"
  type        = string
}

variable "dns_prefix" {
  description = "Prefixo DNS para o cluster"
  type        = string
}

variable "default_node_pool_name" {
  description = "Nome do pool de nós padrão"
  type        = string
  default     = "default"
}

variable "default_node_pool_node_count" {
  description = "Número de nós no pool padrão"
  type        = number
  default     = 1
}

variable "default_node_pool_vm_size" {
  description = "Tamanho da VM para os nós do pool padrão"
  type        = string
  default     = "Standard_B2s"
}

variable "environment_name" {
  description = "Nome do ambiente do Container App"
  type        = string
}

variable "app_name" {
  description = "Nome do Container App"
  type        = string
}

variable "infrastructure_subnet_id" {
  description = "ID da Subnet para a infraestrutura"
  type        = string
}
