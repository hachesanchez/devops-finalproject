provider "azurerm" {
  features {}
  subscription_id = "b892ab8c-2c38-478a-8b8b-887ddc61d17d"

}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    environment = var.environment_tag
  }
}

module "aks" {
  source              = "./modules/aks"
  resource_group_name = var.resource_group_name
  location            = var.location
  aks_cluster_name    = var.aks_cluster_name
  node_count          = var.node_count
  kubernetes_version  = var.kubernetes_version
  dns_prefix          = var.dns_prefix
}

output "aks_cluster_id" {
  value = module.aks.aks_cluster_id
}

