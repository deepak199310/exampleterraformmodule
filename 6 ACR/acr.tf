module "registry" {
    source                              =   "./modules/acr"
    acr_name                            =   "ehcsdevacr01"
    deploy_region                       =   var.deploy_region
    rg_name                             =   data.azurerm_resource_group.rg_name_AKS.name
    admin_enabled                       =   true
    sku                                 =   "Premium"                         
    anonymous_pull_enabled              =   false
    public_network_access_enabled       =   true
    identity_type                       =   "SystemAssigned"
    network_rule_bypass_option          =   "AzureServices"
    default_action                      =   "Deny"
    vnet_action                         =   "Allow" 
    subnet_id                           =   data.azurerm_subnet.snet_aks.id
    env                                 =   var.env
    resource_name                       =   "Container Registry"
    project                             =   var.project
    datecreated                         =   local.timestamp
}   
