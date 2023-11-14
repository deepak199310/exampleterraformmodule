
module "pvt-endpoint" {
source                                  = "./modules/pvt-endpoint"
endpoint_name                           = "${var.project}-${var.env}-KV-PVT-EPT-01"
location                                = var.deploy_region
rg_name                                 = data.azurerm_resource_group.rg_name_kv.name
subnet_id                               = data.azurerm_subnet.snet_app.id
privateserviceconnection_name           = "${var.project}-${var.env}-KV-SVC-CONN-01"
private_link_enabled_resource_id        = module.keyvault.kv_id
is_manual_connection                    = false
subresource_names                       = ["vault"]
}
