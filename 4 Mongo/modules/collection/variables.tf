variable "rg_name" {
  type = string
  description = "Vivasuite DB resource group"
}
variable "db_name" {
  type = string
  description = "Name of the Mongo DB"
}
variable "location" {
  type        = string
  default     = "West Europe"
  description = "Resource group Location"
}
variable "coll_name" {}
variable "account_name"{}
variable "default_ttl_seconds"{}
variable "shard_key"{}
#variable "throughput"{}
variable "resource_name" {}
variable "datecreated" {}
variable "env" {}
