# Estrutura do Projeto

Este projeto utiliza o Terraform para provisionar uma infraestrutura no Azure, incluindo um cluster Kubernetes (AKS) e um Azure Container App. A estrutura do projeto é modular, permitindo a reutilização de código e a manutenção simplificada.

# Módulos Utilizados

- Resource Group: Criação de grupos de recursos.
- Log Analytics Workspace: Configuração do workspace de log para monitoramento.
- VNET: Criação de uma rede virtual.
- Subnet: Criação de subnets dentro da VNET.
- ACR: Criação de um Azure Container Registry.
- Container App: Configuração do ambiente e do aplicativo de container.

# Estrutura de Diretórios

Todos os módulos possuem a mesma estrutura de arquivos: 
main.tf, output.tf e variables.tf


```hcl
Modules/
├── ACR/
├── AKS/
├── CAPP/
├── ENV/
├── LAW/
├── NSG/
├── RG/
├── VM/
├── VNET/
├── SNET/
│   ├── main.tf
│   ├── output.tf
│── └── variables.tf
backend.tf
main.tf
terraform.tfvars
variables.tf
```

## Conceitos Utilizados

### Módulos

Os módulos são blocos de configuração reutilizáveis que ajudam a organizar e encapsular a infraestrutura como código. Cada módulo é responsável por uma parte específica da infraestrutura, tornando o código mais modular e fácil de manter.

### Variáveis

Variáveis são utilizadas para generalizar e parametrizar os módulos. Isso permite que o mesmo módulo seja reutilizado com diferentes parâmetros. Existem diferentes tipos de variáveis, como strings, números, listas e mapas.

### Workspaces

Workspaces permitem a separação do estado do Terraform em ambientes diferentes, como desenvolvimento (dev) e produção (prod). Para usar workspaces, você pode executar os seguintes comandos:

- Criar um novo workspace: `terraform workspace new dev`
- Selecionar um workspace existente: `terraform workspace select dev`
- Listar todos os workspaces: `terraform workspace list`

### Backend

O backend é utilizado para armazenar o estado do Terraform de forma remota. Neste projeto, foi configurado manualmente um backend no Azure (Storage Account) para suportar o state do Terraform. O backend foi configurado da seguinte forma:

```hcl
terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraformstate"
    storage_account_name = "stgterraformstate19"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
```

# Arquivo de Credenciais

O arquivo credentials.tfvars é utilizado para armazenar as credenciais sensíveis necessárias para a autenticação no Azure. Esse arquivo não deve ser incluído no controle de versão (.gitignore) para garantir a segurança das credenciais. Exemplo de conteúdo:

```hcl
client_id       = "YOUR_CLIENT_ID"
client_secret   = "YOUR_CLIENT_SECRET"
tenant_id       = "YOUR_TENANT_ID"
subscription_id = "YOUR_SUBSCRIPTION_ID"
```

# Passos para Execução

Dentro do diretório principal do projeto.

1. Inicialização do Terraform

terraform init

2. Validação da Configuração

terraform validate

3. Seleção do Workspace de Desenvolvimento

terraform workspace select dev

4. Aplicação da Configuração

terraform apply -var-file="terraform.tfvars" -var-file="credentials.tfvars"



# EXTRA

## Criação do Service Principal para Terraform no Azure

### Passo 1: Criação do Service Principal

az ad sp create-for-rbac --name "terraform-sp" --role="Contributor" --scopes="/subscriptions/YOUR_SUBSCRIPTION_ID"

### Exemplo de Saída do Comando:

```json
{
  "appId": "YOUR_CLIENT_ID",
  "displayName": "terraform-sp",
  "name": "http://terraform-sp",
  "password": "YOUR_CLIENT_SECRET",
  "tenant": "YOUR_TENANT_ID"
}
```
appId: O ID do cliente (client_id).
password: A senha (client_secret).
tenant: O ID do tenant (tenant_id).

### Passo 2: Configuração do Arquivo credentials.tfvars
Após criar o Service Principal, adicione as credenciais obtidas ao arquivo credentials.tfvars.

```hcl
client_id       = "YOUR_CLIENT_ID"
client_secret   = "YOUR_CLIENT_SECRET"
tenant_id       = "YOUR_TENANT_ID"
subscription_id = "YOUR_SUBSCRIPTION_ID"
```

### Passo 3: Atualização do .gitignore
Adicione o arquivo credentials.tfvars ao .gitignore para garantir que ele não seja incluído no controle de versão, protegendo suas credenciais sensíveis.


# Recursos Criados na Azure 

< Add fotos aquis >