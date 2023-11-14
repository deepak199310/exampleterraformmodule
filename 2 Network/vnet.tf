
module "virtualnetwork" {
  source           = "./modules/vnet"
  vnet_name        = "${var.project}-${var.env}-VNET-${var.deploy_id}"
  location         = var.deploy_region
  rg_name          = data.azurerm_resource_group.rg_name_net.name
  address_space    = var.vnet_address_space
  resource_name    = "vnet"
  project          = var.project
  datecreated      = local.timestamp
  env              = var.env
}