resource "azurerm_app_service" "AppServiceWebApiOneAppTest" {
  name                = "AppServiceWebApiOneAppTest"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.AppServicePlanTest.id

  # site_config {
  #   dotnet_framework_version = "v4.0"
  #   scm_type                 = "BitbucketGit"
  # }

  app_settings = {
    "SOME_KEY" = "some-value"
  }

  # connection_string {
  #   name  = "Database"
  #   type  = "SQLServer"
  #   value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
  # }
}