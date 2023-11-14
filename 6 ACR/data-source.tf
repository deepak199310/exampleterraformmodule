data "azurerm_resource_group" "rg_name_AKS" {
  name = "${var.project}-${var.env}-AKS-RG-${var.deploy_id}"
}

data "azurerm_resource_group" "rg_name_net" {
  name = "${var.project}-${var.env}-NET-RG-${var.deploy_id}"
}

data "azurerm_subnet" "snet_aks" {
  name                 = "${var.project}-${var.env}-aks-sn-01"
  virtual_network_name = "${var.project}-${var.env}-vnet-${var.deploy_id}"
  resource_group_name  = "${var.project}-${var.env}-NET-rg-${var.deploy_id}"
} 

// Infra Subnets
data "azurerm_subnet" "snet_app" {
  name                 = "${var.project}-${var.env}-infra-sn-${var.deploy_id}"
  virtual_network_name = "${var.project}-${var.env}-vnet-${var.deploy_id}"
  resource_group_name  = "${var.project}-${var.env}-NET-rg-${var.deploy_id}"
}