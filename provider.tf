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
  client_id = "3a6682f8-d121-42ad-9cf6-bed4093a5785"
  client_secret = "8cF8Q~y323yXVgFjRt3ZhvBz7OEHDJyjCPEvXc5H"
  features {
  }
}