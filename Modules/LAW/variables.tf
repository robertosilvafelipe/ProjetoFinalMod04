variable "log_analytics_workspace_name" {
  description = "Nome do Log Analytics Workspace"
  type        = string
}

variable "location" {
  description = "A localização do recurso"
  type        = string
}

variable "resource_group_name" {
  description = "Nome do grupo de recursos"
  type        = string
}

variable "tags" {
  description = "Tags para o recurso"
  type        = map(string)
  default     = {}
}
