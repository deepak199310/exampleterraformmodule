
module "pvt-endpoint" {
source                                  = "./modules/pvt-endpoint"
endpoint_name                           = "${var.project}-${var.env}-ACR-PVT-EPT-${var.deploy_id}"
location                                = var.deploy_region
rg_name                                 = data.azurerm_resource_group.rg_name_AKS.name
subnet_id                               = data.azurerm_subnet.snet_app.id
privateserviceconnection_name           = "${var.project}-${var.env}-ACR-SVC-CONN-${var.deploy_id}"
private_link_enabled_resource_id        = module.registry.acr_id
is_manual_connection                    = false
subresource_names                       = ["registry"]
}
