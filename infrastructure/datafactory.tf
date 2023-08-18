# Create instance Data Factory
resource "azurerm_data_factory" "df" {
  name                = "tokio-olympic-lab"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}

#resource "azurerm_data_factory_pipeline" "dfp" {
#  name            = "data_ingestion"
#  data_factory_id = azurerm_data_factory.df.id
#}