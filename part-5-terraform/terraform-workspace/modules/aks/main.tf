# Datasource to get latest Azure AKS Version
data "azurem_kubernetes_service_versions" "current" {
  location        = var.location
  include_preview = false
}

resource "azurem_kubernetes_cluster" "aks" {
  name                = var.aks_cluster_name
  resource_group_name = var.resource_group_name
  location            = var.location
  kubernetes_version  = data.azurem_kubernetes_service_versions

  default_node_pool {
    name                = "defaultpool"
    vm_size             = "Standard_DS2_v2"
    node_count          = var.node_count
    zones               = [1, 2, 3]
    enable_auto_scaling = true
    max_count           = 3
    min_count           = 1
    os_disk_size_gb     = 30
    type                = "VirtualMachineScaleSets"
  }

  dns_prefix = "aks-${random_string.random_suffix.result}"

  tags = {
    environment = "production"
  }
}

output "aks_cluster_id" {
  value = azurerm_kubernetes_cluster.aks.id
}

