## General Variables
tags = {"environment" = "Sandbox", "region" = "w1", "status" = "In Transit", "business_criticality" = "Low", "data_classification" = "Internal", "application" = "Data Analytics Test", "responsible_group_manager" = "IT Test Mgr", "responsible_group_org_name" = "IT Test Org", "deployed_by" = "IT", "backup" = "backup-value", "value_stream" = "Data Analytics", "responsible_group_org_dl" = "ittest@sharphealthcare.org", "deployment_date" = "1/1/2001", "shc_app_usage" = "Business Hours", "iac_repo" = "repo-name", "cost_center" = "1234"}

## Managemenet Group Module
# parent_management_group_name  = "mg-shc-root"
# management_group_policies     = "{"policy1Id"}"

## Subscription Concifg Module
# subscription_name = "exp-lz-repo-03" 

## RBAC Module
# rbac_azure_ad_group_name  = "AADGroupName"
# rbac_role_name            = "Contributor"
# rbac_scope_type           = "management_group"
# rbac_role_type            = "builtin"

## Cost Management Module
# email_contacts  = ["bob@bob.com", "frank@frank.com"]
# budget_amount   = 1000

## Vnet Resource Group Module
vnet_address_space                              = "10.10.0.0/16"
hub_vnet_name                                   = "hub-vnet" 
hub_vnet_rg_name                                = "hub-rg"
# firewall_ip                                     = "10.0.0.1"

subnet_list = [
  {
    "subnet_name" = "subnet-01"
    "prefix"      = "10.10.10.0/24"
    "purpose"     = "Test"
    "nsg_map"     = [
      {
        "name"                       = "rule01"
        "priority"                   = 101
        "direction"                  = "Inbound"
        "access"                     = "Allow"
        "protocol"                   = "*"
        "source_port_range"          = "*"
        "destination_port_ranges"    = [
          "80",
          "443",
          "3389",
          "22"
        ]
        "destination_port_range"     = ""
        "source_address_prefix"      = "*"
        "destination_address_prefix" = "*"
      }
    ]
  }
]
