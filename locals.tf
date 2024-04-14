##################
# Local Variables
##################

# locals {
#   location_prefix_map = {
#     "eus2" = "eastus2",
#     "cus" = "centralus"
#   }
#   org_abreviation     = "client"
#   prefix              = "${var.tags["Environment"]}"
#   time                = formatdate("DD-MMM-YYYY hh:mm:ss", timeadd(timestamp(), "-6h")) # UTC -6h = CST
#   tags                = merge(var.tags, { "ModifiedDate" = local.time })
#   lock                = false
#   tfc_org_name        = var.org_name
#   tfc_workspace_name  = var.org_workspace_name
# }
