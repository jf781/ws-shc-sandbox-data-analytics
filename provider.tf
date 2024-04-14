terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = "~> 1.0"

  cloud {
    organization = "Joe-Demo"
    workspaces {
      name = "ws-shc-sandbox-data-analytics"
    }
  }

}

provider "azurerm" {
  features {}
}
