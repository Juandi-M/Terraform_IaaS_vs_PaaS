resource "azurerm_storage_container" "innolabblobcont" {
  name                  = "innolabblobcont"
  storage_account_name  = azurerm_storage_account.innolabblobacc.name
  container_access_type = "private"
}

