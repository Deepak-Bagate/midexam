terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.101.0"
    }
  }
  backend "azurerm" {
    storage_account_name = "storeitexam"
    resource_group_name  = "rg-test"
    container_name       = "cntrexam"
    key                  = "Keymidexam"
  }
}
provider "azurerm" {
  features {}
}

