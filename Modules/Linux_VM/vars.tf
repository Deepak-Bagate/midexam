variable "vms" {
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



