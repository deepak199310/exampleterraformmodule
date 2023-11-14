//Blob//
module "blob_storage" {
  source                                = "./modules/storage"
  name                                  = "ehcsdevblobstorage01"
  rg_name                               = data.azurerm_resource_group.rg_name.name
  location                              = var.deploy_region
  account_kind                          = "StorageV2"
  account_tier                          = "Standard"
  access_tier                           = "Hot"
  account_replication_type              = "GRS"
  enable_https_traffic_only             = true
  min_tls_version                       = "TLS1_2"
  # This needs to set to False for PROD Deployment
  # allow_blob_public_access              = true 
  shared_access_key_enabled             = true 
  # This needs to set to true for Data Lake Storage
  is_hns_enabled                        = false
  #versioning_enabled                    = true
  identity_type                         = "SystemAssigned"
  allowed_headers                       = ["*"]
  allowed_methods                       = ["GET","HEAD","POST","PUT"]
  allowed_origins                       = ["*"]
  exposed_headers                       = ["*"]
  max_age_in_seconds                    = "3600"
  days                                  = "7"
  container_retention_days              = "7" 
  default_action                        = "Deny"
  bypass                                = ["AzureServices", "Logging", "Metrics"]
  ip_rules                              = [""]
  virtual_network_subnet_ids            = [data.azurerm_subnet.snet_app.id, data.azurerm_subnet.snet_aks.id]
  env                                   = var.env
  resource_name                         = "Storage Account"
  project                               = var.project
  datecreated                           = local.timestamp
}

//Diagnostics//
module "storage_diag" {
  source                                = "./modules/storage"
  name                                  = "ehcsdevdiagstorage01"
  rg_name                               = data.azurerm_resource_group.rg_name.name
  location                              = var.deploy_region
  account_kind                          = "StorageV2"
  account_tier                          = "Standard"
  access_tier                           = "Hot"
  account_replication_type              = "LRS"
  enable_https_traffic_only             = true
  min_tls_version                       = "TLS1_2"
  # This needs to set to False for PROD Deployment
  # allow_blob_public_access              = true 
  shared_access_key_enabled             = true 
  # Hierarchial NameSpace needs to set to true for Data Lake Storage
  is_hns_enabled                        = false
  #versioning_enabled                    = true
  identity_type                         = "SystemAssigned"
  allowed_headers                       = ["*"]
  allowed_methods                       = ["GET","HEAD","POST","PUT"]
  allowed_origins                       = ["*"]
  exposed_headers                       = ["*"]
  max_age_in_seconds                    = "3600" 
  days                                  = "7"
  container_retention_days              = "7" 
  default_action                        = "Deny"
  bypass                                = ["AzureServices", "Logging", "Metrics"]
  ip_rules                              = [""]
  virtual_network_subnet_ids            = [data.azurerm_subnet.snet_app.id, data.azurerm_subnet.snet_aks.id]
  env                                   = var.env
  resource_name                         = "Storage Account"
  project                               = var.project
  datecreated                           = local.timestamp
}
