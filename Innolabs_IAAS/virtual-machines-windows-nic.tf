resource "azurerm_network_interface" "vmwindows01-nic" {
  name                = "vmwindows01-nic"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.innolabsubnetwork.id
    private_ip_address_allocation = "Dynamic"
  }
}