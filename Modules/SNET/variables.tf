variable "resource_group_name" {
  description = "O nome do grupo de recursos onde a subnet será criada"
  type        = string
}

variable "virtual_network_name" {
  description = "O nome da rede virtual onde a subnet será criada"
  type        = string
}

variable "subnets" {
  description = "Uma lista de mapas que define as subnets"
  type = list(object({
    name             = string
    address_prefixes = list(string)
  }))
}
