terraform {
  backend "azurerm" {
    resource_group_name  = "rg-frijoles-test-terraform"
    storage_account_name = "staccthefrijolestest"
    container_name       = "tfstate"
    key                  = "terraform-tfstate"
  }
}
