resource "azurerm_mysql_server" "mysql" {
  location = var.location
  name = var.db_server_name
  resource_group_name = var.resource_group_name
  administrator_login = var.admin_username
  administrator_login_password = var.db_password
  sku_name = var.sku_name
  version = var.db_version
//  sku {
//    name     = "B_Gen5_2"
//    capacity = 2
//    tier     = "Basic"
//    family = "Gen5"
//  }

  storage_profile {
    storage_mb            = 5120
    backup_retention_days = 7
    geo_redundant_backup  = "Disabled"
  }
  ssl_enforcement           = var.ssl_enforcement_enabled
//  ssl_minimal_tls_version_enforced  = var.ssl_minimal_tls_version_enforced
}