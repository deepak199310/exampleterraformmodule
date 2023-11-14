##########################
# Cosmos Account MODULE
##########################

resource "azurerm_cosmosdb_account" "cosmos_acc" {
  name                                = var.cosmos_acc_name
  location                            = var.location
  resource_group_name                 = var.rg_name
  offer_type                          = var.cosmos_db_offer
  kind                                = var.cosmos_db_kind
  mongo_server_version                = var.mongo_server_version
  enable_automatic_failover           = var.cosmos_enable_automatic_failover
  enable_multiple_write_locations     = var.cosmos_db_enable_multiple_write_locations
  public_network_access_enabled       = var.public_network_access_enabled
  ip_range_filter                     = var.cosmos_db_ip_range_filter
  is_virtual_network_filter_enabled   = var.is_virtual_network_filter_enabled
  #default_identity_type               = var.default_identity_type
  access_key_metadata_writes_enabled  = var.access_key_metadata_writes_enabled
  network_acl_bypass_for_azure_services   = var.network_acl_bypass_for_azure_services
  virtual_network_rule {
    id                                      = var.vnet_id
    ignore_missing_vnet_service_endpoint    = var.ignore_missing_vnet_service_endpoint
  }

  identity {
    type                              = var.identity_type
  } 
  capabilities {
    name = var.db_capabilities
  }

  
  capabilities {
    name = var.server_capabilities
  }

  consistency_policy {
    consistency_level       = var.cosmos_db_consistency_level
    max_interval_in_seconds = var.cosmos_db_max_interval_in_seconds
    max_staleness_prefix    = var.cosmos_db_max_staleness_prefix
  }

  geo_location {
    location          = var.location
    failover_priority = var.failover_priority
    zone_redundant    = var.zone_redundant
  }

  backup {
    type                = var.backup_type
    interval_in_minutes = var.interval_in_minutes
    retention_in_hours  = var.retention_in_hours
    storage_redundancy  = var.storage_redundancy
  }

  tags = {
    name            = var.rg_name
    environment     = var.env
    project         = var.project
    resourcename    = var.resource_name
    datecreated     = var.datecreated
  }

  lifecycle {
    ignore_changes = [consistency_policy, tags["datecreated"]]
  }
}
