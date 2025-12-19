terraform {
  backend "azurerm" {
    resource_group_name  = "rg-bootstrap-IAC7STAR"
    storage_account_name = "sgbootsrapiac7star"
    container_name       = "tfstate-shared-landing-zone"
    key                  = "landing-zone.tfstate"
  }
}
