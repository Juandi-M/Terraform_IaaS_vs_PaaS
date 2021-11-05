resource "azurerm_storage_container" "innolabblobcont02" {
  name                  = "innolabblobcont02"
  storage_account_name  = azurerm_storage_account.innolabblobacc02.name
  container_access_type = "private"
}

