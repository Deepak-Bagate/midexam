resource "azurerm_virtual_network" "vent" {
  
  name                = "Vnet"
  location            = "centralindia"
  resource_group_name = "RG-exam"
  address_space       = ["10.0.0.0/16"]
}

