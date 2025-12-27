resource "azurerm_resource_group" "lz" {
  name     = "${var.prefix}-lz-rg"
  location = var.location
}
