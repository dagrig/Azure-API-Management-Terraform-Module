# Configure the Azure provider
provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "apim_rg" {
  name     = var.resource_group_name
  location = var.location
}

# Create an API Management service
resource "azurerm_api_management" "apim_service" {
  name                = var.apim_service_name
  location            = azurerm_resource_group.apim_rg.location
  resource_group_name = azurerm_resource_group.apim_rg.name
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email
  sku_name            = var.sku_name
}