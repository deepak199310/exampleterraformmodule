terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=2.90.0"
    }
  }
  #required_version = "~> 0.12.14"
}

provider "azurerm" {
  # Configuration options
  features {}

}
locals {
  timestamp = "${formatdate("YYYY-MM-DD", timestamp())}"
}