output "resource_group_name" {
  value = azurerm_resource_group.example_rg.name
}

output "vnet_name" {
  value = azurerm_virtual_network.example_vnet.name
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.example_aks.name
}
