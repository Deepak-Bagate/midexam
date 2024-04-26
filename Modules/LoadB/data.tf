data "azurerm_resource_group" "RG" {
  name = "RG-exam"
}

data "azurerm_public_ip" "pip" {
  name                = "PIP-LB"
  resource_group_name = data.azurerm_resource_group.RG.name
}
data "azurerm_virtual_network" "vnet" {
  name                = "Vnet"
  resource_group_name = data.azurerm_resource_group.RG.name
}