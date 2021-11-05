# NOTE: the Name used for Redis needs to be globally unique
#resource "azurerm_redis_cache" "innolab-redis" {
#  name                = "innolab-redis"
#  location            = var.resource_group_location
#  resource_group_name = var.resource_group_name
#  capacity            = 2
#  family              = "C"
#  sku_name            = "Standard"
#  enable_non_ssl_port = false
#  minimum_tls_version = "1.2"

#  redis_configuration {
#  }
#}