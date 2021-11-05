resource "azurerm_virtual_network" "innolabnetwork" {
  name                = "innolabnetwork"
  address_space       = ["10.0.0.0/16"]
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "innolabsubnetwork" {
  name                 = "internal"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.innolabnetwork.name
  address_prefixes     = ["10.0.2.0/24"]
}