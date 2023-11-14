
module "pvt-endpoint1" {
source                                  = "./modules/pvt-endpoint1"
endpoint_name                           = "${var.project}-${var.env}-STACC-PVT-EPT-${var.deploy_id}"
location                                = var.deploy_region
rg_name                                 = data.azurerm_resource_group.rg_name.name
subnet_id                               = data.azurerm_subnet.snet_app.id
privateserviceconnection_name           = "${var.project}-${var.env}-STACC-SVC-CONN-${var.deploy_id}"
private_link_enabled_resource_id        = module.blob_storage.stacc_id
is_manual_connection                    = false
subresource_names                       = ["blob"]
}
