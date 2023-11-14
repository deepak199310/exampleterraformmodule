# Calling NSG-SUBNET Association Module here...

module "subnet_nsg_association_infra" {
  source           = "./modules/subnet-nsg-association"
  subnet_id        = module.infra_subnet.subnet_id
  nsg_id           = module.infra_network_security_group.nsg_id
}

module "subnet_nsg_association_appgw" {
  source           = "./modules/subnet-nsg-association"
  subnet_id        = module.appgw_subnet.subnet_id
  nsg_id           = module.appgw_network_security_group.nsg_id
}

module "subnet_nsg_association_data" {
  source           = "./modules/subnet-nsg-association"
  subnet_id        = module.data_subnet.subnet_id
  nsg_id           = module.data_network_security_group.nsg_id
}

module "subnet_nsg_association_aks" {
  source           = "./modules/subnet-nsg-association"
  subnet_id        = module.aks_subnet.subnet_id
  nsg_id           = module.aks_network_security_group.nsg_id
}

module "subnet_nsg_association_aps" {
  source           = "./modules/subnet-nsg-association"
  subnet_id        = module.aps_subnet.subnet_id
  nsg_id           = module.aps_network_security_group.nsg_id
}
