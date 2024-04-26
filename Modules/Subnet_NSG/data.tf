data "azurerm_subnet" "subnet" {
  for_each             = var.subnsg
  name                 = each.value.subnetname
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}
data "azurerm_network_security_group" "nsg" {
  for_each            = var.subnsg
  name                = each.value.nsgname
  resource_group_name = each.value.resource_group_name
}
