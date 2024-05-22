variable "resource_group_name" {
  description = "O nome do grupo de recursos"
  type        = string
}

variable "location" {
  description = "A localização do grupo de recursos"
  type        = string
}

#Aqui usamos o conceito de Map: Uma coleção de valores que são acessados por uma chave.
variable "tags" {
  description = "Tags para o grupo de recursos"
  type        = map(string)
  default     = {
    Owner       = "DevOps Team"
    Environment = "Production"
  }
}
