tags = {
    "BusinessUnit"        = "1234"
    "Environment"         = "hub"
    "Location"            = "az1"
}

# location = "centralus"

prefix = "az1-connectivity"

vnet_address_space = "10.10.0.0/16"

subnets = [
  {
      subnet_name = "firewall"
      prefix      = "10.10.1.0/26"
      purpose     = "azurefirewall"
  },
  {
      subnet_name = "gateway"
      prefix      = "10.10.1.64/27"
      purpose     = "gateway"
  },
  {
      subnet_name = "trusted"
      prefix      = "10.10.10.0/24"
      purpose     = "trust"
  },
  {
      subnet_name = "appgw"
      prefix      = "10.10.1.96/27"
      purpose     = "appgw"
  }
]

dns_servers = []

app_gw_inbound_cidrs = ["0.0.0.0/0"]

org_name = "Joe-Demo"

org_workspace_name = "example-ws-01"