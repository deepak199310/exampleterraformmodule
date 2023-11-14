variable "cosmos_acc_name"{
    type = string
    description = "Name of the cosmos DB Account"
}
variable "location"{
    type = string
    default = "West Europe"
}
variable "rg_name"{
    type = string
    description = "Vivasuite resource group for DBs"
}
variable "cosmos_db_offer"{}
variable "cosmos_db_kind"{}
variable "mongo_server_version"{}
variable "cosmos_enable_automatic_failover"{}
variable "cosmos_db_enable_multiple_write_locations"{}
variable "cosmos_db_ip_range_filter"{}
variable "is_virtual_network_filter_enabled"{}
variable "db_capabilities"{}
variable "server_capabilities"{}
variable "cosmos_db_consistency_level"{}
variable "cosmos_db_max_interval_in_seconds"{}
variable "cosmos_db_max_staleness_prefix"{}
variable "failover_priority"{}
variable "backup_type"{}
variable "interval_in_minutes"{}
variable "retention_in_hours"{}
variable "storage_redundancy"{}
variable "public_network_access_enabled"{}
#variable "default_identity_type"{}
variable "identity_type" {}
variable "access_key_metadata_writes_enabled" {}
variable "network_acl_bypass_for_azure_services" {}
variable "zone_redundant" {}
variable "vnet_id" {}
variable "ignore_missing_vnet_service_endpoint" {}
variable "env"{}
variable "resource_name"{}
variable "datecreated"{}
variable "project" {}