resource "azurerm_kubernetes_cluster" "example_aks" {
  name                = "example-aks-cluster"
  location            = azurerm_resource_group.example_rg.location
  resource_group_name = azurerm_resource_group.example_rg.name
  dns_prefix          = "exampleaks"

  default_node_pool {
    name       = "agentpool"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
    vnet_subnet_id = azurerm_subnet.aks_subnet.id
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin    = "azure"
    load_balancer_sku = "standard"
    network_policy    = "calico"
    service_cidr      = "10.1.0.0/16"   # New service CIDR
    dns_service_ip    = "10.1.0.10"     # DNS service IP in the new service CIDR range
  }

  depends_on = [azurerm_subnet.aks_subnet]
}
