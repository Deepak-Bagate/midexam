data "azurerm_subnet" "subnet" {
  name                 = "AzureBastionSubnet"
  virtual_network_name = "Vnet"
  resource_group_name  = "RG-exam"
}
data "azurerm_public_ip" "publicip" {
  name                = "PIP-Bastion"
  resource_group_name = "RG-exam"
}
