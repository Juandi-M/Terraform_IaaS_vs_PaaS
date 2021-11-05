resource "azurerm_app_service_plan" "AppServicePlanTest" {
  name                = "AppServicePlanTest"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  kind                = "Windows"
  
  sku {
    tier = "Free"
    size = "F1"
  }
}