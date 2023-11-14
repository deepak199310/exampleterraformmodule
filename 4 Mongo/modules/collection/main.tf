###############################
# MongoDB Collection MODULE
###############################

resource "azurerm_cosmosdb_mongo_collection" "collection" {
  name                = var.coll_name
  resource_group_name = var.rg_name
  account_name        = var.account_name
  database_name       = var.db_name

  default_ttl_seconds = var.default_ttl_seconds
  shard_key           = var.shard_key
  #throughput          = var.throughput

  index {
    keys   = ["_id"]
    unique = true
  }
  /*tags = {
    name            = var.rg_name
    environment     = var.env
    project         = var.project
    resourcename    = var.resource_name
    datecreated     = var.datecreated
  }

  lifecycle {
    ignore_changes = [tags["datecreated"]]
  }

  depends_on = [azurerm_cosmosdb_mongo_database.mongodb]*/
}
