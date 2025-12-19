# Hub → Dev
resource "azurerm_virtual_network_peering" "hub_to_dev" {
  name                      = "hub-to-dev"
  resource_group_name       = azurerm_resource_group.network.name
  virtual_network_name      = azurerm_virtual_network.hub.name
  remote_virtual_network_id = azurerm_virtual_network.dev.id
  allow_forwarded_traffic   = true
}

resource "azurerm_virtual_network_peering" "dev_to_hub" {
  name                      = "dev-to-hub"
  resource_group_name       = azurerm_resource_group.network.name
  virtual_network_name      = azurerm_virtual_network.dev.name
  remote_virtual_network_id = azurerm_virtual_network.hub.id
  allow_forwarded_traffic   = true
}

# Hub → Prod
resource "azurerm_virtual_network_peering" "hub_to_prod" {
  name                      = "hub-to-prod"
  resource_group_name       = azurerm_resource_group.network.name
  virtual_network_name      = azurerm_virtual_network.hub.name
  remote_virtual_network_id = azurerm_virtual_network.prod.id
  allow_forwarded_traffic   = true
}

resource "azurerm_virtual_network_peering" "prod_to_hub" {
  name                      = "prod-to-hub"
  resource_group_name       = azurerm_resource_group.network.name
  virtual_network_name      = azurerm_virtual_network.prod.name
  remote_virtual_network_id = azurerm_virtual_network.hub.id
  allow_forwarded_traffic   = true
}