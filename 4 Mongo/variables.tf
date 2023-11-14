################################## Project Details #######################################
variable "project" {
  type = string
}
variable "env" {
  description = "Environment the project is running in"
}
########################### Deployment Details ###########################
variable "deploy_region" {}
variable "deploy_id" {}

# Possible values are Continuous and Periodic
variable "backup_type" {}

#configurable only when type is Periodic. Possible values are between 60 and 1440.
variable "interval_in_minutes" {}

#configurable only when type is Periodic. Possible values are between 8 and 720.
variable "retention_in_hours" {}

#configurable only when type is Periodic. Possible values are Geo, Local and Zone
variable "storage_redundancy" {}







