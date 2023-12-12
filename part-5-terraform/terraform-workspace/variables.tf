variable "resource_group_name" {
  description = "The name of the resource group in which the resources will be created"
  type        = string
}

variable "location" {
  description = "The location of the resource group in which the resources will be created"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the Azure Storage Account"
  type        = string
}

variable "storage_account_tier" {
  description = "The Storage Account tier"
  type        = string
}

variable "storage_replication_type" {
  description = "The Storage Account replication type"
  type        = string
}

variable "tfstate_container_name" {
  description = "The tfstate Container name"
  type        = string
}

variable "tfstate_access_type" {
  description = "Determines the public access level for the Azure Storage container"
  type        = string
}

variable "aks_cluster_name" {
  description = "The na,e of the AKS clusteer module"
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the AKS cluster"
  type        = number
}

variable "kubernetes_version" {
  description = "The Kubernetes version for the AKS cluster"
  type        = string
}
