
provider "azurerm" {
  features {}
}

module "aks" {
  source              = "./modules/aks"
  resource_group_name = var.resource_group_name
  location            = var.location
  aks_cluster_name    = var.aks_cluster_name
  node_count          = var.node_count
  #   kubernetes_version  = var.kubernetes_version
}

output "aks_cluster_id" {
  value = module.aks.aks_cluster_id
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

