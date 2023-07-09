terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.62.1"
    }
  }
  backend "azurerm" {
    resource_group_name = "terraform-poc"
    storage_account_name = "terraformpocritiktest"
    container_name = "terraform-demo-container"
    key = "terraform.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "f8231c19-9560-40d1-a65d-a0618d065526"
  tenant_id = "540f532a-c53d-4daf-b68d-3dbb0bf536ce"
  features {
  }
}