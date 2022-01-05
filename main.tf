provider "azurerm" {
   features {}
}

terraform {
    required_version = "~> 1.1.2"
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 2.90"
        }
    }

  backend "azurerm" {
    resource_group_name  = "rg-hello-azure-tf"
    storage_account_name = "sahelloazuretff"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "rg-hello-azure" {
  name     = "rg-hello-azure"
  location = "northcentralus"
}
