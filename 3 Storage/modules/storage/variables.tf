variable "name"{
    type = string
    description = "Name of the Storage Account"
}

variable "rg_name" {
    type = string
    description = "Name of the Storage Account"
}
variable "location" {
    type = string
    default = "West Europe"
    description = "Location of the Storage Account"
}

variable "account_kind" {}
variable "account_tier" {}
variable "account_replication_type" {}
variable "access_tier" {}
variable "enable_https_traffic_only" {}
variable "min_tls_version" {}
#variable "allow_blob_public_access" {}
variable "shared_access_key_enabled" {}
variable "is_hns_enabled" {}
#variable "versioning_enabled" {}
variable "identity_type" {}
variable "allowed_headers" {}
variable "allowed_methods" {}
variable "allowed_origins" {}
variable "exposed_headers" {}
variable "max_age_in_seconds" {}
variable "days" {}
variable "container_retention_days" {}
variable "default_action" {}
variable "bypass" {}
variable "ip_rules" {}
variable "virtual_network_subnet_ids" {}
variable "env" {}
variable "project" {}
variable "resource_name" {}
variable "datecreated" {}