# Calling SUBNET Module here...
module "appgw_subnet" {
  source                      = "./modules/subnet"
  subnet_name                 = "${var.project}-${var.env}-APPGW-SN-${var.deploy_id}"
  rg_name                     = data.azurerm_resource_group.rg_name_net.name
  vnet_name                   = module.virtualnetwork.vnet_name
  subnet_address_prefix       = var.appgw_subnet_address_space
  pvt_endpoint_force          = true
  /*delegation_name             = "none"
  service_delegation_name     = "None"
  service_delegation_actions  = "Microsoft.Network/virtualNetworks/subnets/join/action"*/
}
module "data_subnet" {
  source                      = "./modules/subnet"
  subnet_name                 = "${var.project}-${var.env}-DB-SN-${var.deploy_id}"
  rg_name                     = data.azurerm_resource_group.rg_name_net.name
  vnet_name                   = module.virtualnetwork.vnet_name
  subnet_address_prefix       = var.data_subnet_address_space
  pvt_endpoint_force          = true
  /*delegation_name             = "mysql"
  service_delegation_name     = "Microsoft.DBforMySQL/flexibleServers"
  service_delegation_actions  = "Microsoft.Network/virtualNetworks/subnets/join/action"*/
}
module "infra_subnet" {
  source                      = "./modules/subnet"
  subnet_name                 = "${var.project}-${var.env}-INFRA-SN-${var.deploy_id}"
  rg_name                     = data.azurerm_resource_group.rg_name_net.name
  vnet_name                   = module.virtualnetwork.vnet_name
  subnet_address_prefix       = var.infra_subnet_address_space
  pvt_endpoint_force          = true
  /*delegation_name             = "none"
  service_delegation_name     = "none"
  service_delegation_actions  = "Microsoft.Network/virtualNetworks/subnets/action"*/
}

module "aks_subnet" {
  source                      = "./modules/subnet"
  subnet_name                 = "${var.project}-${var.env}-AKS-SN-${var.deploy_id}"
  rg_name                     = data.azurerm_resource_group.rg_name_net.name
  vnet_name                   = module.virtualnetwork.vnet_name
  subnet_address_prefix       = var.aks_subnet_address_space
  pvt_endpoint_force          = true
  /*delegation_name             = "none"
  service_delegation_name     = "None"
  service_delegation_actions  = "Microsoft.Network/virtualNetworks/subnets/action"*/
}

module "bastion_subnet" {
  source                      = "./modules/subnet"
  subnet_name                 = "AzureBastionSubnet"
  rg_name                     = data.azurerm_resource_group.rg_name_net.name
  vnet_name                   = module.virtualnetwork.vnet_name
  subnet_address_prefix       = var.azure_bastion_subnet
  pvt_endpoint_force          = false
  /* delegation_name             = "none"
  service_delegation_name     = "None"
  service_delegation_actions  = "Microsoft.Network/virtualNetworks/subnets/action" */
}

module "aps_subnet" {
  source                      = "./modules/subnet"
  subnet_name                 = "${var.project}-${var.env}-APS-SN-${var.deploy_id}"
  rg_name                     = data.azurerm_resource_group.rg_name_net.name
  vnet_name                   = module.virtualnetwork.vnet_name
  subnet_address_prefix       = var.aps_subnet_address_space
  pvt_endpoint_force          = true
  /*delegation_name             = "none"
  service_delegation_name     = "None"
  service_delegation_actions  = "Microsoft.Web/serverFarms"*/
}