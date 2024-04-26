
resource "azurerm_bastion_host" "Bastion" {

  name                = "Bastion-Host"
  location            = "centralindia"
  resource_group_name = "RG-exam"
  copy_paste_enabled  = true
  sku                 = "Standard"
  file_copy_enabled   = true

  ip_configuration {
    name                 = "configuration"
    subnet_id            = data.azurerm_subnet.subnet.id
    public_ip_address_id = data.azurerm_public_ip.publicip.id
  }
}
