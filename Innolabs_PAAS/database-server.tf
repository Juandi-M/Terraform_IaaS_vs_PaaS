resource "azurerm_mysql_server" "innolab-mysql-server02" {
  name                = "innolab-mysql-server02"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  administrator_login          = var.db_user_name
  administrator_login_password = var.db_user_password

  sku_name   = "B_Gen5_2"
  storage_mb = 5120
  version    = "5.7"

  #auto_grow_enabled                 = true
  #backup_retention_days             = 7
  #geo_redundant_backup_enabled      = false
  #infrastructure_encryption_enabled = false
  public_network_access_enabled     = true
  ssl_enforcement_enabled           = false
  
}

resource "azurerm_sql_server" "innolab-sql-server02" {
  name                         = "innomssqlserver02"
  resource_group_name          = var.resource_group_name
  location                     = var.resource_group_location
  version                      = "12.0"
  administrator_login          = var.db_user_name
  administrator_login_password = var.db_user_password

  extended_auditing_policy {
    storage_endpoint                        = azurerm_storage_account.innolabblobacc02.primary_blob_endpoint
    storage_account_access_key              = azurerm_storage_account.innolabblobacc02.primary_access_key
    storage_account_access_key_is_secondary = true
    retention_in_days                       = 6
  }

  tags = {
    environment = "production"
  }
}


resource "azurerm_postgresql_server" "innolab-pgsql-server02" {
  name                = "inno-postgresql-server02"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  sku_name = "B_Gen5_2"

  storage_mb                   = 5120
  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  auto_grow_enabled            = true

  administrator_login          = var.db_user_name
  administrator_login_password = var.db_user_password
  version                      = "9.5"
  ssl_enforcement_enabled      = true
}

