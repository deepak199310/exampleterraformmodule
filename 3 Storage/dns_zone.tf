
module "dns_zone" {
source                      = "./modules/zone"
dns_zone_name               = "privatelink.blob.core.windows.net"
rg_name                     = data.azurerm_resource_group.rg_name_net.name
record_name1                 = "ehcsdevblobstorage01"
records1                     = module.pvt-endpoint1.private_ip
}

/*

module "dns_zone2" {
source                      = "./modules/zone"
dns_zone_name               = "privatelink.blob.core.windows.net"
rg_name                     = data.azurerm_resource_group.rg_name_net.name
record_name2                 = "ehcsusqadiagstorage01"
records2                     = module.pvt-endpoint1.private_ip
}*/