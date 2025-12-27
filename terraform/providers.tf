terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0" # Or your version
    }
  }
}

provider "azurerm" {
  features {}
}