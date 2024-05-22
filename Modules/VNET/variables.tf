# modules/vnet/variables.tf
variable "vnet_name" {
  description = "O nome da rede virtual (VNET)"
  type        = string
}

variable "address_space" {
  description = "O espaço de endereçamento da VNET"
  type        = list(string)
}

variable "location" {
  description = "A localização da VNET"
  type        = string
}

variable "resource_group_name" {
  description = "O nome do grupo de recursos onde a VNET será criada"
  type        = string
}

variable "tags" {
  description = "Tags para a VNET"
  type        = map(string)
  default     = {}
}
