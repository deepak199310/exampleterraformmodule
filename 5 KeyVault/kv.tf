module "keyvault" {
    source                              =   "./modules/kv"
    kv_name                             =   "${var.project}-${var.env}-KV-${var.deploy_id}"
    deploy_region                       =   var.deploy_region
    rg_name                             =   data.azurerm_resource_group.rg_name_kv.name
    enabled_for_disk_encryption         =   true
    enabled_for_deployment              =   true
    tenant_id                           =   data.azurerm_client_config.current.tenant_id                           
    soft_delete_enabled                 =   false
    purge_protection_enabled            =   "false"
    sku_name                            =   "standard"
    bypass                              =   "AzureServices"
    default_action                      =   "Deny"
    ip_rules                            =   [""]
    virtual_network_subnet_ids          =   [data.azurerm_subnet.snet_app.id, data.azurerm_subnet.snet_aks.id]
    env                                 =   var.env
    resource_name                       =   "Key Vault"
    project                             =   var.project
    datecreated                         =   local.timestamp
    object_id                           =   data.azurerm_client_config.current.object_id
}   
