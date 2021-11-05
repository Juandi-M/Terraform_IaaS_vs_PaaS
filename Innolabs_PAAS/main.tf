terraform {

  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "ad060e4b-718f-473c-9738-240817acf623"
  features {}
}

resource "azurerm_resource_group" "Innolabs" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

