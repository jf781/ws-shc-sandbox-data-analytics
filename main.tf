#---------------------------------------------------------------
# Unmanaged Resources
#---------------------------------------------------------------

# Get data for subscription that is being worked in
data "azurerm_subscription" "current" {
}


#---------------------------------------------------------------
# Managed Resources
#---------------------------------------------------------------

# Create resource groups to be used within the platform subscription
module "resource_group_networking" {
    source              = "app.terraform.io/Joe-Demo/module-resource-group/azurerm"
    prefix              = "rg-1234"
    resource_group_name = "network"
    location            = var.location
    lock                = false
    tags                = var.tags
}

module "vnet" {
  source                      = "app.terraform.io/Joe-Demo/module-hub-vnet/azurerm"
  appgw_public_cidrs_inbound  = var.app_gw_inbound_cidrs
  tags                        = var.tags
  name_prefix                 = var.prefix
  subnet_list                 = var.subnets
  resource_group_name         = module.resource_group_networking.resource_group_name
  location                    = var.location
  vnet_address_space          = var.vnet_address_space
  dns_servers                 = var.dns_servers
}
