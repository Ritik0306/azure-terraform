terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.62.1"
    }
  }
  backend "azurerm" {
    resource_group_name = "terrform-test-pipeline"
    storage_account_name = "rtcterraformpoc"
    container_name = "terrraformpoc"
    key = "terraform.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "6fe625c6-7a10-4efa-bc4e-5ecc0d6e0a06"
  tenant_id = "661531e5-7111-438e-9d28-7a630db4c065"
  features {
  }
}