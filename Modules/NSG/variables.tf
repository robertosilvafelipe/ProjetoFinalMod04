variable "nsg_name" {
  description = "Nome do Network Security Group"
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

variable "subnet_id" {
  description = "ID da subnet"
  type        = string
}

variable "tags" {
  description = "Tags para o recurso"
  type        = map(string)
  default     = {}
}
