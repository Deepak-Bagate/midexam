variable "subnsg" {
  type = map(object({
    nsgname              = string
    subnetname           = string
    virtual_network_name = string
    resource_group_name  = string
  }))
}
