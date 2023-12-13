resource "azurerm_postgresql_flexible_server" "postgresql" {
  name                   = "basic3tier"
  location               = azurerm_resource_group.rg.location
  resource_group_name    = azurerm_resource_group.rg.name
  sku_name               = "B_Standard_B1ms"
  storage_mb             = 32768
  administrator_login    = "postgres"
  administrator_password = "admin123?"
  version                = "12"
}

resource "azurerm_postgresql_flexible_server_firewall_rule" "all" {

  name             = "allow-all-ips"
  server_id        = azurerm_postgresql_flexible_server.postgresql.id
  start_ip_address = "0.0.0.0"
  end_ip_address   = "255.255.255.255"
}
