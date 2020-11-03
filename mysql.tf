module "db-mysql" {
  source  = "rhythmictech/mysql/azurerm"
  version = "3.0.1"
  name                            = "aks-db"
  admin_username                  = var.admin_username
  password                        = var.db_password
//  source                        = "claranet/db-mysql/azurerm"
//  version                       = "3.0.0"
//  administrator_login           = var.admin_username
//  administrator_password        = var.db_password
//  allowed_cidrs                 = var.vpc_cidr
//  allowed_subnets               = var.private2
//  client_name                   = []
//  databases_names               = []
//  environment                   = var.environment
//  location_short                = var.location
  location                      = var.location
//  resource_group_name           = azurerm_resource_group.aks-rg.name
//  auto_grow_enabled             = true
//  backup_retention_days         = 7
//  custom_server_name            = "aks-mysql-server"
//  enable_logs_to_log_analytics  = false
//  enable_logs_to_storage        = false
//  extra_tags                    = merge({ Name = "aks mysql server" }, local.common_tags)
//  force_ssl                     = false
//  geo_redundant_backup_enabled  = false
//  log_storage_retention         = 7
//  mysql_version                 = "5.7"
//  storage_mb                    = 5120
//  tier                          = "GeneralPurpose"
}