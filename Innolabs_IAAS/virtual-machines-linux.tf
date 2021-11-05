

resource "azurerm_linux_virtual_machine" "vmlinux01" {
  name                = "vmlinux01"
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  size                = "Standard_F2"
  admin_username      = var.db_user_name
  network_interface_ids = [
    azurerm_network_interface.vmlinux01-nic.id,
  ]

  admin_ssh_key {
    username   = var.db_user_name
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
}
