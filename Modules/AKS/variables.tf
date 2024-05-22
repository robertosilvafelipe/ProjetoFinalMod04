# modules/aks/variables.tf
variable "cluster_name" {
  description = "Nome do cluster Kubernetes"
  type        = string
}

variable "location" {
  description = "Localização do recurso"
  type        = string
}

variable "resource_group_name" {
  description = "Nome do grupo de recursos"
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
  default     = "Standard_B2s"  # Tamanho menor para laboratório
}

variable "log_analytics_workspace_id" {
  description = "ID do Log Analytics Workspace"
  type        = string
}

variable "tags" {
  description = "Tags para o recurso"
  type        = map(string)
  default     = {}
}
