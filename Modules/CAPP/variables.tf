variable "environment_name" {
  description = "Nome do ambiente do Container App"
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

variable "log_analytics_workspace_id" {
  description = "ID do Log Analytics Workspace"
  type        = string
}

variable "infrastructure_subnet_id" {
  description = "ID da Subnet para a infraestrutura"
  type        = string
}

variable "app_name" {
  description = "Nome do Container App"
  type        = string
}

variable "tags" {
  description = "Tags para o recurso"
  type        = map(string)
  default     = {}
}

