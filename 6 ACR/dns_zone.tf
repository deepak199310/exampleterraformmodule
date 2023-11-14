
module "dns_zone" {
source                      = "./modules/zone"
dns_zone_name               = "privatelink.azurecr.io"
rg_name                     = data.azurerm_resource_group.rg_name_net.name
record_name                 = "ehcsdevacr01"
records                     = module.pvt-endpoint.private_ip
}