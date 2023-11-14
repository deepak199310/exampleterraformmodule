
resource "azurerm_key_vault" "kv" {
  name                        = var.kv_name
  location                    = var.deploy_region
  resource_group_name         = var.rg_name
  enabled_for_disk_encryption = var.enabled_for_disk_encryption
  tenant_id                   = var.tenant_id
  #soft_delete_enabled         = var.soft_delete_enabled
  purge_protection_enabled    = var.purge_protection_enabled
  sku_name                    = var.sku_name
  enabled_for_deployment      = var.enabled_for_deployment
  
  access_policy {
    tenant_id                 = var.tenant_id
    object_id                 = var.object_id
        key_permissions               = ["Get", "List", "Create", "Delete"]
        secret_permissions            = ["Get", "List", "Set", "Delete"]
        certificate_permissions       = ["Get", "Import", "List", "Create", "Delete"]
        storage_permissions           = ["Backup", "Get", "List", "Recover"]  
  }

  network_acls {
    bypass                      = var.bypass
    default_action              = var.default_action
    ip_rules                    = var.ip_rules
    virtual_network_subnet_ids  = var.virtual_network_subnet_ids
  }
  tags = {
      Name            =  var.kv_name
      Environment     =  var.env
      Project         =  var.project
      resourcename    =  var.resource_name
      datecreated     =  var.datecreated

  }
}