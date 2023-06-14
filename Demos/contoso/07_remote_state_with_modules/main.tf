# main.tf from calling module 
terraform {
  backend "azurerm" {
    resource_group_name = "contoso"
    # storage_account_name  = "tfstate10168"
    container_name = "livedemo"
    key            = "terraform.tfstate"
  }
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

# Deploy a remote module if already have one. 
# Or just switch back to local module (or just deploy a simple rg)
module "connectedrg" {  
  source   = "<repo-server>/<username>/<repo-name>//contoso-az-connectedrg?ref=v1.0"
  rg_names = var.rg_names
  vnets    = var.vnets
}

# partial config
# terraform init -backend-config="storage_account_name=tfdemos"


