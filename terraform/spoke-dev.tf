resource "azurerm_virtual_network" "dev" {
  name                = "${var.prefix}-dev-spoke-vnet"
  location            = var.location
  resource_group_name = azurerm_resource_group.network.name
  address_space       = [var.dev_spoke_vnet_cidr]
}

resource "azurerm_subnet" "dev_app" {
  name                 = "app-subnet"
  resource_group_name  = azurerm_resource_group.network.name
  virtual_network_name = azurerm_virtual_network.dev.name
  address_prefixes     = ["10.1.1.0/24"]
}
