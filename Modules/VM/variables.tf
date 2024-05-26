variable "vm_name" {
  description = "Nome da máquina virtual"
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

variable "vm_size" {
  description = "Tamanho da VM"
  type        = string
  default     = "Standard_B2ms"
}

variable "admin_username" {
  description = "Nome de usuário administrador para a VM"
  type        = string
  default     = "adminuser"
}

variable "admin_password" {
  description = "Senha de administrador para a VM"
  type        = string
  sensitive   = true
}

variable "tags" {
  description = "Tags para o recurso"
  type        = map(string)
  default     = {}
}

variable "tenant_id" {
  description = "ID do tenant do Azure"
  type        = string
}
