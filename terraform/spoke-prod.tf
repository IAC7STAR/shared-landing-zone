# Resource Group for Prod Spoke
resource "azurerm_resource_group" "prod" {
  name     = "${var.prefix}-prod-spoke-rg"
  location = var.location
}

# Prod Spoke Virtual Network
resource "azurerm_virtual_network" "prod" {
  name                = "${var.prefix}-prod-spoke-vnet"
  location            = var.location
  resource_group_name = azurerm_resource_group.prod.name
  address_space       = [var.prod_spoke_vnet_cidr]
}

# Prod App Subnet
resource "azurerm_subnet" "prod_app" {
  name                 = "app-subnet"
  resource_group_name  = azurerm_resource_group.prod.name
  virtual_network_name = azurerm_virtual_network.prod.name
  address_prefixes     = ["10.2.1.0/24"]
}
