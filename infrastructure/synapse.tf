resource "azurerm_synapse_workspace" "example" {
  name                                 = "tokio-olympic-synapse-demo"
  resource_group_name                  = azurerm_resource_group.rg.name
  location                             = azurerm_resource_group.rg.location
  storage_data_lake_gen2_filesystem_id = azurerm_storage_data_lake_gen2_filesystem.folder-container.id
  sql_administrator_login              = "sqladminuser"
  sql_administrator_login_password     = "*******senha*********"

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = "dev"
    source      = "Terraform"
  }
}