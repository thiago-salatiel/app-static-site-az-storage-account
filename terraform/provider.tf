terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "fe880dd5-3ebe-4c1b-bb39-7a80be9d40bc"
  tenant_id       = "11dbbfe2-89b8-4549-be10-cec364e59551"
  client_id       = "52dc67ff-e9f5-4f8d-a495-acf70be33e7e"
  client_secret   = "pYK8Q~6w6.waYaMscXXcwdcpcj7d_UVN_UXBgcQn"
}