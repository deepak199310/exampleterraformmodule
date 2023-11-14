# Calling NSG Module here...
module "infra_network_security_group" {
  source           = "./modules/nsg"
  nsg_name         = "${var.project}-${var.env}-INFRA-NSG-${var.deploy_id}"
  location         = var.deploy_region
  rg_name          = data.azurerm_resource_group.rg_name_net.name
  resource_name    = "NSG"
  project          = var.project
  datecreated      = local.timestamp
  env              = var.env
}

module "data_network_security_group" {
  source           = "./modules/nsg"
  nsg_name         = "${var.project}-${var.env}-DB-NSG-${var.deploy_id}"
  location         = var.deploy_region
  rg_name          = data.azurerm_resource_group.rg_name_net.name
  resource_name    = "NSG"
  project          = var.project
  datecreated      = local.timestamp
  env              = var.env
}

module "appgw_network_security_group" {
  source           = "./modules/nsg"
  nsg_name         = "${var.project}-${var.env}-APPGW-NSG-${var.deploy_id}"
  location         = var.deploy_region
  rg_name          = data.azurerm_resource_group.rg_name_net.name
  resource_name    = "NSG"
  project          = var.project
  datecreated      = local.timestamp
  env              = var.env
}

module "aks_network_security_group" {
  source           = "./modules/nsg"
  nsg_name         = "${var.project}-${var.env}-AKS-NSG-${var.deploy_id}"
  location         = var.deploy_region
  rg_name          = data.azurerm_resource_group.rg_name_net.name
  resource_name    = "NSG"
  project          = var.project
  datecreated      = local.timestamp
  env              = var.env
}

module "aps_network_security_group" {
  source           = "./modules/nsg"
  nsg_name         = "${var.project}-${var.env}-APS-NSG-${var.deploy_id}"
  location         = var.deploy_region
  rg_name          = data.azurerm_resource_group.rg_name_net.name
  resource_name    = "NSG"
  project          = var.project
  datecreated      = local.timestamp
  env              = var.env
}