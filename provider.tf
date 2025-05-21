terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.28.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "3.3.0"
    }
  }

  required_version = ">= 1.10.0"
}
# configures the provider

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = false
    }
  }
  subscription_id = "a068e11b-1702-45e4-ae9c-c69d99981337"
}
provider "azuread" {

}
