###############################
# Mongo DB MODULE
###############################

resource "azurerm_cosmosdb_mongo_database" "mongodb" {
  name                = var.db_name
  resource_group_name = var.rg_name
  account_name        = var.account_name
  #throughput          = var.throughput

  /*tags = {
    name            = var.rg_name
    environment     = var.env
    resourcename    = var.resource_name
    datecreated     = var.datecreated
  }

  lifecycle {
    ignore_changes = [tags["datecreated"]]
  }*/
}