output "kube_config" {
  description = "Kube config do cluster AKS"
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
}
