
module "dns_zone" {
source                      = "./modules/zone"
dns_zone_name               = "privatelink.mongo.cosmos.azure.com"
rg_name                     = data.azurerm_resource_group.rg_name_net.name
record_name                 = "ehcs-dev-cosmos-account-01"
records                     = module.pvt-endpoint.private_ip
}