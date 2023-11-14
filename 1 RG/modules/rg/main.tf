

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.rg_location

  tags = {
      Name            =  var.rg_name
      Environment     =  var.env
      Project         =  var.project
      resourcename    =  var.resource_name
      datecreated     =  var.datecreated

  }
}