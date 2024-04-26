variable "m_rg" {
  type = map(object({
    name     = string
    location = string
  }))
}
variable "m_subnet" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}

variable "m_nsg" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  }))
}
variable "m_rule" {
  type = map(object({
    name                       = string
    priority                   = string
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
}
variable "m_publicIP" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    allocation_method   = string
    sku                 = string
  }))
}

variable "m_key" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    sku_name            = string


  }))
}
variable "m_secret" {
  type = map(object({
    name  = string
    value = string
  }))
}
variable "m_vms" {
  type = map(object({
    nicname              = string
    location             = string
    resource_group_name  = string
    size                 = string
    vmname               = string
    subnetname           = string
    virtual_network_name = string
  }))
}
variable "m_subnsg" {
  type = map(object({
    nsgname              = string
    subnetname           = string
    virtual_network_name = string
    resource_group_name  = string
  }))
}



