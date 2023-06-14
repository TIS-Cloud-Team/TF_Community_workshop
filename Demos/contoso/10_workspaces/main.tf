terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.34.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "contoso_rg" {
  name     = "${var.prefix}_${terraform.workspace}_rg"
  location = var.region
  tags     = var.tags
}

