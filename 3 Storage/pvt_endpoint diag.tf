module "pvt-endpoint2" {
source                                  = "./modules/pvt-endpoint2"
endpoint_name                           = "${var.project}-${var.env}-STACC-PVT-EPT-02"
location                                = var.deploy_region
rg_name                                 = data.azurerm_resource_group.rg_name.name
subnet_id                               = data.azurerm_subnet.snet_app.id
privateserviceconnection_name           = "${var.project}-${var.env}-STACC-SVC-CONN-02"
private_link_enabled_resource_id        = module.storage_diag.stacc_id
is_manual_connection                    = false
subresource_names                       = ["blob"]
}