terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  tenant_id = "72f988bf-86f1-41af-91ab-2d7cd011db47"
  subscription_id = "bc288fdd-c41e-4334-961a-26e993d3c506"
}
