variable "org_name" {
  type        = string
  description = "The name of the Terraform Cloud organization to use."
}

variable "org_workspace_name" {
  type        = string
  description = "The name of the Terraform Cloud organization to use."
}

variable location { 
  type = string 
  description = "The location/region where the resources in this template should be created."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to add to all resources."
}

variable prefix { 
  type = string 
  description = "The prefix to use for all resources in this template."
}

variable "vnet_address_space" {
  type        = string
  description = "The address space to use for the VNET."
}

variable "subnets" {
  type        = list(object({ 
    subnet_name = string
    prefix      = string
    purpose     = string
  }))
  description = "A list of subnets to create in the vnet."
}

variable "dns_servers" {
  type        = list(string)
  description = "A list of DNS servers to use for the VNET."
}

variable app_gw_inbound_cidrs { 
  type = list(string) 
  description = "A list of CIDRs to allow inbound traffic from for Application Gateway."
}

# availability_zones = [1,2,3]
