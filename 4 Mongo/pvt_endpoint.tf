
module "pvt-endpoint" {
source                                  = "./modules/pvt-endpoint"
endpoint_name                           = "${var.project}-${var.env}-COSMOS-PVT-EPT-${var.deploy_id}"
location                                = var.deploy_region
rg_name                                 = data.azurerm_resource_group.rg_name.name
subnet_id                               = data.azurerm_subnet.snet_app.id
privateserviceconnection_name           = "${var.project}-${var.env}-COSMOS-SVC-CONN-${var.deploy_id}"
private_link_enabled_resource_id        = module.cosmos_account.acc_id
is_manual_connection                    = false
subresource_names                       = ["MongoDB"]
}
