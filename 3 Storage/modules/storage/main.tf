resource "azurerm_storage_account" "stacc" {
  name                                = var.name
  resource_group_name                 = var.rg_name
  location                            = var.location
  account_kind                        = var.account_kind
  account_tier                        = var.account_tier
  account_replication_type            = var.account_replication_type
  access_tier                         = var.access_tier
  enable_https_traffic_only           = var.enable_https_traffic_only
  min_tls_version                     = var.min_tls_version
  #allow_blob_public_access            = var.allow_blob_public_access
  shared_access_key_enabled           = var.shared_access_key_enabled 
  is_hns_enabled                      = var.is_hns_enabled
  #versioning_enabled                  = var.versioning_enabled
  identity{
    type                              = var.identity_type
  }

  blob_properties{
   cors_rule{
     allowed_headers                  = var.allowed_headers
     allowed_methods                  = var.allowed_methods
     allowed_origins                  = var.allowed_origins
     exposed_headers                  = var.exposed_headers
     max_age_in_seconds               = var.max_age_in_seconds  
    }

   delete_retention_policy{
     days                             = var.days
   }

   container_delete_retention_policy{
     days                             = var.container_retention_days
   } 

  }
  network_rules{
    default_action                    = var.default_action
    bypass                            = var.bypass
    ip_rules                          = var.ip_rules
    virtual_network_subnet_ids        = var.virtual_network_subnet_ids
  }

  tags = {
      Name            =  var.name
      Environment     =  var.env
      Project         =  var.project
      resourcename    =  var.resource_name
      datecreated     =  var.datecreated

  }
}