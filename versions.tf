terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.66.0"
    }
  }

  required_version = ">= 0.14"
  
  backend "azurerm" {
    resource_group_name  = "tfacctstorage-rg"
    storage_account_name = "tfacctstorage"
    container_name       = "tfstate"
    key                  = "key"
  }
}
