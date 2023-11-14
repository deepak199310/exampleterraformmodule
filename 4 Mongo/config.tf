terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
  required_version = ">= 0.13"
}

provider "azurerm" {
  #version = "~>2.14.0"
  features {}
  } 

# terraform {
#   backend "azurerm" {
#   resource_group_name   = "AA-Warranty-Stacc-Dev-Extension-D1-RG"
#   storage_account_name  = "aawarrantydevstacc"
#   container_name        = "terraform-statefile-dev"
#   key                   = "terraform_rg.tfstate"
#   use_msi = true
#   }
# }

locals {
  timestamp = formatdate("YYYY-MM-DD", timestamp())
}