resource "azurerm_resource_group" "network" {
  name     = "${var.prefix}-lz-network-rg
  location = var.location
}