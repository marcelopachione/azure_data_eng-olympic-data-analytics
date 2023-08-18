# Create Env Databricks
resource "azurerm_databricks_workspace" "db" {
  name                = "tokio-db-databricks"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "premium"

  tags = {
    environment = "dev"
    source      = "Terraform"
  }
}