
resource "azurerm_network_security_group" "NSG" {
  name                = var.nsg_name
  location            = var.location
  resource_group_name = var.rg_name

  tags = {
      Name            =  var.nsg_name
      Environment     =  var.env
      Project         =  var.project
      datecreated     =  var.datecreated
  }
}
