terraform {
  # backend "azurerm" {
  #   resource_group_name  = "backend-rg"
  #   storage_account_name = "backendfilestorage024"
  #   container_name       = "backendfilesdata"
  #   key                  = "subnet.tfstate"
  # }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
}


provider "azurerm" {
  features {}
}