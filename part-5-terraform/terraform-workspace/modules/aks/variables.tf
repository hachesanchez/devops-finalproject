variable "aks_cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the resources will be created"
  type        = string
}

variable "location" {
  description = "The location of the resource group in which the resources will be created"
  type        = string
}

variable "node_count" {
  description = "The bumber of nodes in the AKS cluster"
  type        = number
}

# variable "kubernetes_version" {
#   description = "The Kubernetes version for the AKS cluster"
#   type        = string
# }
