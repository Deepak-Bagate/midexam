data "azurerm_subnet" "subnet" {
  for_each             = var.vms
  name                 = each.value.subnetname
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}
data "azurerm_key_vault" "keyvault" {
  name                = "Keymidexam"
  resource_group_name = "RG-exam"
}
data "azurerm_key_vault_secret" "username" {
  name         = "username"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}
data "azurerm_key_vault_secret" "password" {
  name         = "password"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}
