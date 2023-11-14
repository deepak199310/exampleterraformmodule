## Calling MongoDB Account Module here...


module "cosmos_account" {
  source                                        = "./modules/account"
  cosmos_acc_name                               = "ehcs-dev-cosmos-account-01"
  location                                      = var.deploy_region
  rg_name                                       = data.azurerm_resource_group.rg_name.name
  cosmos_db_offer                               = "Standard"
  cosmos_db_kind                                = "MongoDB"
  mongo_server_version                          = "4.0"
  cosmos_enable_automatic_failover              = false
  cosmos_db_enable_multiple_write_locations     = false
  public_network_access_enabled                 = true
  cosmos_db_ip_range_filter                     = ""
  is_virtual_network_filter_enabled             = true
  db_capabilities                               = "EnableMongo"
  server_capabilities                           = "EnableServerless"
  cosmos_db_consistency_level                   = "BoundedStaleness"
  cosmos_db_max_interval_in_seconds             = "300"
  cosmos_db_max_staleness_prefix                = "100000"
  failover_priority                             = "0"
  zone_redundant                                = false
  backup_type                                   = var.backup_type
  interval_in_minutes                           = var.interval_in_minutes
  retention_in_hours                            = var.retention_in_hours
  storage_redundancy                            = var.storage_redundancy
  #default_identity_type                         = "SystemAssignedIdentity"
  identity_type                                 = "SystemAssigned"
  access_key_metadata_writes_enabled            = true
  network_acl_bypass_for_azure_services         = true
  vnet_id                                       = data.azurerm_subnet.snet_aks.id
  ignore_missing_vnet_service_endpoint          = false
  env                                           = var.env
  resource_name                                 = "Cosmos Account"
  datecreated                                   = local.timestamp  
  project                                       = var.project
}


