


resource "azurerm_windows_virtual_machine" "vmwindows01" {
  name                = "vmwindows01"
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  size                = "Standard_F2"
  admin_username      = var.db_user_name
  admin_password      = var.db_user_password
  network_interface_ids = [
    azurerm_network_interface.vmwindows01-nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}