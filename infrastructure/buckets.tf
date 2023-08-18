# Create Datalake ##

# Create directory raw-data
resource "azurerm_storage_data_lake_gen2_filesystem" "folder-container" {
  name               = "tokio-olympic-data"
  storage_account_id = azurerm_storage_account.sa.id
}

resource "azurerm_storage_data_lake_gen2_path" "folder-raw-data" {
  path               = "raw-data"
  filesystem_name    = azurerm_storage_data_lake_gen2_filesystem.folder-container.name
  storage_account_id = azurerm_storage_account.sa.id
  resource           = "directory"
}

resource "azurerm_storage_data_lake_gen2_path" "folder-transformed-data" {
  path               = "transformed-data"
  filesystem_name    = azurerm_storage_data_lake_gen2_filesystem.folder-container.name
  storage_account_id = azurerm_storage_account.sa.id
  resource           = "directory"
}