
resource "azurerm_virtual_network" "VNET" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.rg_name
  address_space       = [var.address_space]

  tags = {
      Name            =  var.vnet_name
      Environment     =  var.env
      Project         =  var.project
      resourcename    =  var.resource_name
      datecreated     =  var.datecreated
  }
}