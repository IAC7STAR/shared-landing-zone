# Resource Group for Dev Spoke
resource "azurerm_resource_group" "dev" {
  name     = "${var.prefix}-dev-spoke-rg"
  location = var.location
}

# Dev Spoke Virtual Network
resource "azurerm_virtual_network" "dev" {
  name                = "${var.prefix}-dev-spoke-vnet"
  location            = var.location
  resource_group_name = azurerm_resource_group.dev.name
  address_space       = [var.dev_spoke_vnet_cidr]
}

# Dev App Subnet
resource "azurerm_subnet" "dev_app" {
  name                 = "app-subnet"
  resource_group_name  = azurerm_resource_group.dev.name
  virtual_network_name = azurerm_virtual_network.dev.name
  address_prefixes     = ["10.1.1.0/24"]
}
