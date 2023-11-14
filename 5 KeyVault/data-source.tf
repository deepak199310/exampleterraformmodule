data "azurerm_client_config" "current" {}

data "azurerm_resource_group" "rg_name_kv" {
  name = "${var.project}-${var.env}-COMMON2-RG-${var.deploy_id}"
}

data "azurerm_resource_group" "rg_name_net" {
  name = "${var.project}-${var.env}-NET-RG-${var.deploy_id}"
}

data "azurerm_virtual_network" "vnet" {
  name = "${var.project}-${var.env}-VNET-${var.deploy_id}"
  resource_group_name  = "${var.project}-${var.env}-NET-rg-${var.deploy_id}"
}
// Infra Subnets
data "azurerm_subnet" "snet_app" {
  name                 = "${var.project}-${var.env}-infra-sn-${var.deploy_id}"
  virtual_network_name = "${var.project}-${var.env}-vnet-${var.deploy_id}"
  resource_group_name  = "${var.project}-${var.env}-NET-rg-${var.deploy_id}"
}
// AKS Subnets
data "azurerm_subnet" "snet_aks" {
  name                 = "${var.project}-${var.env}-aks-sn-${var.deploy_id}"
  virtual_network_name = "${var.project}-${var.env}-vnet-${var.deploy_id}"
  resource_group_name  = "${var.project}-${var.env}-NET-rg-${var.deploy_id}"
}
