
provider "azurerm" {
  #version = "~>2.14.0"
  features {}
  } 

  locals {
  timestamp = formatdate("YYYY-MM-DD", timestamp())
}