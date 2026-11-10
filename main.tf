# main.tf

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "core_rg" {
  name     = var.resource_group_name
  location = var.location
}

# Calling our custom module
module "enterprise_storage" {
  source               = "./modules/storage_account"
  storage_account_name = "stentp${var.environment}001"
  resource_group_name  = azurerm_resource_group.core_rg.name
  location             = azurerm_resource_group.core_rg.location
  replication_type     = "GRS"

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
    Owner       = "SRE-Team"
  }
}
