module "RG" {
  source = "../../Modules/RG"
  RG     = var.m_rg
}
module "Vnet" {
  source     = "../../Modules/VNET"
  depends_on = [module.RG]
}
module "subnet" {
  source     = "../../Modules/Subnet"
  SUBNET     = var.m_subnet
  depends_on = [module.Vnet]
}
module "NSG" {
  source     = "../../Modules/NSG"
  NSG        = var.m_nsg
  rule       = var.m_rule
  depends_on = [module.RG]
}
module "pip" {
  source     = "../../Modules/Public_IP"
  PUBLICIP   = var.m_publicIP
  depends_on = [module.RG]
}
module "key" {
  source     = "../../Modules/KeyVault"
  key        = var.m_key
  secret     = var.m_secret
  depends_on = [module.pip]
}

module "bastion" {
  source     = "../../Modules/Bastion"
  depends_on = [module.key, module.RG]
}
module "subnsg" {
  source     = "../../Modules/Subnet_NSG"
  subnsg     = var.m_subnsg
  depends_on = [module.bastion]
}
module "vms" {
  source     = "../../Modules/Linux_VM"
  vms        = var.m_vms
  depends_on = [module.subnsg, module.RG]
}
module "lb" {
  source     = "../../Modules/LoadB"
  depends_on = [module.vms]
}