terraform {

  backend "azurerm" {
      resource_group_name  = "aks-terraform"
      storage_account_name = "aks-storageacc"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
  }

}