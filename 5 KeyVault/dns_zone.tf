
module "dns_zone" {
source                      = "./modules/zone"
dns_zone_name               = "privatelink.vaultcore.azure.net"
rg_name                     = data.azurerm_resource_group.rg_name_net.name
record_name                 = "ehcs-dev-kv-01"
records                     = module.pvt-endpoint.private_ip
}