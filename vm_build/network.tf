resource "azurerm_virtual_network" "vnet01" {
  name                = var.vnet01_name
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  address_space       = var.ipaddress

  
}

resource "azurerm_subnet" "sub01" {
  name                 = var.sub01_name
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet01.name
  address_prefixes     = var.sub01_ip
}