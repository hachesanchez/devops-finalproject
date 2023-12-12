# Part 5 - Create an AKS Cluster using Terraform

This guide outlines the steps to set up an Azure Kubernetes Service (AKS) cluster using Terraform.  

## Steps:

### 1. Create a Terraform Workspace and AKS Module

- Configure files:

```
└── terraform-workspace
    ├── backend.tf
    ├── main.tf
    ├── modules
    │   └── aks
    │       ├── main.tf
    │       ├── outputs.tf
    │       └── variables.tf
    ├── storage-account.tf
    ├── storage-container.tf
    ├── terraform.tfstate
    ├── terraform.tfstate.backup
    ├── terraform.tfvars
    └── variables.tf
```


### 2. Manage State in Remote Azure Blob

1. Navigate to the `terraform-workspace` directory.
2. Create configurations in files based on networking and infrastructure needs.

### 3. Follow Best Practices for Structured and Modular Code

1. Adhere to Terraform best practices for creating structured and modular code.
2. Ensure proper variable usage, module organization, and maintainability.

### 4. [Bonus] Publish the Terraform Module to Terraform Cloud

1. Consider publishing your Terraform module to Terraform Cloud.
2. Create a free account on Terraform Cloud and follow the platform's documentation  


<!-- 
blabla
 -->
 