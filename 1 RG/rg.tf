
// Calling RG Module///

//Network//
module "resourcegroup_net" {
  source           = "./modules/rg"
  rg_name          = "${var.project}-${var.env}-NET-RG-${var.deploy_id}"
  rg_location      = var.deploy_region
  env              = var.env
  resource_name    = "RG"
  project          = var.project
  datecreated      = local.timestamp
}

//Storage account//
module "resourcegroup_stacc" {
  source           = "./modules/rg"
  rg_name          = "${var.project}-${var.env}-STORAGE-RG-${var.deploy_id}"
  rg_location      = var.deploy_region
  env              = var.env
  resource_name    = "RG"
  project          = var.project
  datecreated      = local.timestamp
}

//Monitor//
module "resourcegroup_monitor" {
  source           = "./modules/rg"
  rg_name          = "${var.project}-${var.env}-MONITOR-RG-${var.deploy_id}"
  rg_location      = var.deploy_region
  env              = var.env
  resource_name    = "RG"
  project          = var.project
  datecreated      = local.timestamp
}

//App Service, Functions, EventHubs//
module "resourcegroup_common" {
  source           = "./modules/rg"
  rg_name          = "${var.project}-${var.env}-COMMON2-RG-${var.deploy_id}"
  rg_location      = var.deploy_region
  env              = var.env
  resource_name    = "RG"
  project          = var.project
  datecreated      = local.timestamp
}

//Cosmos DB//
module "resourcegroup_db" {
  source           = "./modules/rg"
  rg_name          = "${var.project}-${var.env}-DB-RG-${var.deploy_id}"
  rg_location      = var.deploy_region
  env              = var.env
  resource_name    = "RG"
  project          = var.project
  datecreated      = local.timestamp
}

// Compute //
module "resourcegroup_compute" {
  source           = "./modules/rg"
  rg_name          = "${var.project}-${var.env}-COMPUTE-RG-${var.deploy_id}"
  rg_location      = var.deploy_region
  env              = var.env
  resource_name    = "RG"
  project          = var.project
  datecreated      = local.timestamp
}

// AKS, ACR //
module "resourcegroup_AKS" {
  source           = "./modules/rg"
  rg_name          = "${var.project}-${var.env}-AKS-RG-${var.deploy_id}"
  rg_location      = var.deploy_region
  env              = var.env
  resource_name    = "RG"
  project          = var.project
  datecreated      = local.timestamp
}