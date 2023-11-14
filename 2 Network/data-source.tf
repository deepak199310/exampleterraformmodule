# Calling all Data sources needed for this MySQL Module

// Resource Group

data "azurerm_resource_group" "rg_name_net" {
  name = "${var.project}-${var.env}-NET-RG-${var.deploy_id}"
}