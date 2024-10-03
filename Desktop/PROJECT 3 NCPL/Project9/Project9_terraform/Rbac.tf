resource "azurerm_role_assignment" "aks_admin" {
    principal_id = "3c069688-fcf0-47df-af4d-da59e090ea18"
    role_definition_name = "Azure Kubernetes Service Cluster Admin Role"
    scope = azurerm_kubernetes_cluster.aks.id
  
}