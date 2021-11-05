terraform {

  required_version = ">=0.12"
  
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "68a44596-f3be-4ae0-b1b4-1113561f0e83"
  features {}
}

resource "azurerm_resource_group" "Innolabs" {
  name = var.resource_group_name
  location = var.resource_group_location
}

