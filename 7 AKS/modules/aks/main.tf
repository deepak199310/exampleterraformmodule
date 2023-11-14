resource "azurerm_kubernetes_cluster" "aks" {
  name                    = var.cluster_name
  kubernetes_version      = var.kubernetes_version
  location                = var.location
  resource_group_name     = var.rg_name
  dns_prefix              = var.dns_prefix
  sku_tier                = var.sku_tier
  private_cluster_enabled = var.private_cluster_enabled  
  #local_account_disabled  = true
  
  default_node_pool {
      orchestrator_version   = var.orchestrator_version
      name                   = var.node_pool_name
      vm_size                = var.vm_size
      os_disk_size_gb        = var.os_disk_size_gb
      os_disk_type           = var.os_disk_type
      vnet_subnet_id         = var.vnet_subnet_id
      enable_auto_scaling    = var.enable_auto_scaling
      node_count             = var.node_count
#      max_count              = var.max_count 
#      min_count              = var.min_count
      enable_node_public_ip  = var.enable_node_public_ip
      availability_zones     = var.node_availability_zones
     # node_labels            = var.node_labels
      type                   = var.node_type
      max_pods               = var.node_max_pods
      enable_host_encryption = var.enable_host_encryption
  
  }

identity {
    type = var.idtype
  }

 addon_profile {
    http_application_routing {
      enabled = var.enable_http_application_routing
    }

    kube_dashboard {
      enabled = var.enable_kube_dashboard
    }

    azure_policy {
      enabled = var.enable_azure_policy
    }
    
 oms_agent {
   enabled                    = true
   log_analytics_workspace_id = var.log_analtics_workspace_id
  }

 }

role_based_access_control {
    enabled = true
    azure_active_directory {
      managed                = true
      tenant_id              = var.tenant_id
      admin_group_object_ids = var.admin_group_object_id
      azure_rbac_enabled     = true

    }
}
tags = {
    name            = "${var.cluster_name}"
    environment     = "${var.env}"
    project         = "${var.project}"
    resourcename    = "${var.resource_name}"
    datecreated     = "${var.datecreated}"
  }
}

resource "azurerm_role_assignment" "aks_to_acr_role" {
      scope                = var.acr_scope
      role_definition_name = "AcrPull"
      principal_id         = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
      skip_service_principal_aad_check = true
    }






