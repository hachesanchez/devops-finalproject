resource "azurerm_app_service" "the-frijoles-front" {
  name                = var.web_app_name_1
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.app-service-plan-the-frijoles.id


}

resource "azurerm_app_service" "the-frijoles-back" {
  name                = var.web_app_name_2
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.app-service-plan-the-frijoles.id

  site_config {
    dotnet_framework_version = "v7.0"
    scm_type                 = "LocalGit"
  }
}
