module "mongodb_collection" {
  source              = "./modules/collection"
  coll_name           = "${var.project}-${var.env}-collection-${var.deploy_id}"
  rg_name             = data.azurerm_resource_group.rg_name.name
  account_name        = module.cosmos_account.name
  db_name             = module.mongodb.name
  default_ttl_seconds = "777"
  shard_key           = "_id"
  #throughput            =  400
  resource_name = "Mongo DB COllection"
  datecreated   = local.timestamp
  env           = var.env
}
