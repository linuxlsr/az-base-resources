# general storage
resource "azurerm_storage_account" "general_storage_account" {
  account_replication_type = "GRS"
  account_tier             = "Standard"
  location                 = var.location
  name                     = "generalsasoops"
  resource_group_name      = "aks-rg"
}

#container for general storage
resource "azurerm_storage_container" "gsa_container" {
  name                 = "gsa-storage"
  storage_account_name = azurerm_storage_account.general_storage_account.name
}

# blob storage
resource "azurerm_storage_blob" "gsa_blob" {
  name                   = "gsa-blob"
  storage_account_name   = azurerm_storage_account.general_storage_account.name
  storage_container_name = azurerm_storage_container.gsa_container.name
  type                   = "Block"
}

# share storage
resource "azurerm_storage_share" "gsa_share" {
  name                 = "gsa-share"
  storage_account_name = azurerm_storage_account.general_storage_account.name
  quota                = 500
}
