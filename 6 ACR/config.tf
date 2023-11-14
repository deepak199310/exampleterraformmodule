
provider "azurerm" {
  #version = "~>2.14.0"
  features {}
  } 

 /* terraform {
  backend "azurerm" {
    resource_group_name   = "Terra-rg"
    storage_account_name  = "remotesa012345"
    container_name        = "testblob"
    key                   = "terraform.tfstate"
  }
} */

  locals {
  timestamp = formatdate("YYYY-MM-DD", timestamp())
}