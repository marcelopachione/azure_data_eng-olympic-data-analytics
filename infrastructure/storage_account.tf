# Create a storage account
resource "azurerm_storage_account" "sa" {
  name                     = "tokioolympicsdatalab"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS" # Locallly-redundant storage
  is_hns_enabled           = "true"

  tags = {
    environment = "dev"
    source      = "Terraform"
  }
}