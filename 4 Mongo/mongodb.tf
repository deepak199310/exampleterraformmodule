module "mongodb" {
  source                = "./modules/mongodb"
  db_name               =  "ehcsdevmongodb01"
  rg_name               =  data.azurerm_resource_group.rg_name.name
  account_name          =  module.cosmos_account.name
  #throughput            =  400
  resource_name         = "Mongo DB"
  project               =  var.project
  datecreated           =  local.timestamp
  env                   =  var.env
 }