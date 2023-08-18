# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "resource_group_tokio_olympics"
  location = "West Europe"
  tags = {
    enviroment = "dev"
    source     = "Terraform"
  }
}