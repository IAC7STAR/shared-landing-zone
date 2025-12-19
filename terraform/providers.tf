terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"  # Good choice; this is compatible with most recent features
    }
  }
}

provider "azurerm" {  # ← Add the closing " after azurerm
  features {}         # Required for AzureRM provider (can be empty or with options)

  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  client_secret   = var.client_secret
}