resource "azurerm_kubernetes_cluster" "innolabsk8s" {
  name                = "innolabsk8s"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  dns_prefix          = "innok8s"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

output "client_certificate" {
  value = azurerm_kubernetes_cluster.innolabsk8s.kube_config.0.client_certificate
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.innolabsk8s.kube_config_raw

  sensitive = true
}