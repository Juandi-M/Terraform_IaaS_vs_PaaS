
resource "azurerm_mysql_database" "innolabdb02" {
  name                = "innolabdb02"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_server.innolab-mysql-server02.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}

resource "azurerm_mysql_database" "innolabdb03" {
  name                = "innolabdb03"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_server.innolab-mysql-server02.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}

resource "azurerm_postgresql_database" "innolabpgdb02" {
  name                = "innolabpgdb02"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_server.innolab-pgsql-server02.name
  charset             = "UTF8"
  collation           = "English_United States.1252"
}