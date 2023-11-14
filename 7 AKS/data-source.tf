data "azurerm_resource_group" "rg_name_AKS" {
  name = "${var.project}-${var.env}-AKS-RG-${var.deploy_id}"
}


data "azurerm_subnet" "snet_aks" {
  name                 = "${var.project}-${var.env}-AKS-SN-${var.deploy_id}"
  virtual_network_name = "${var.project}-${var.env}-VNET-${var.deploy_id}"
  resource_group_name  = "${var.project}-${var.env}-NET-RG-${var.deploy_id}"

}


  data "azurerm_container_registry" "acr_name" {
      name = ""
      resource_group_name = "${var.project}-${var.env}-AKS-RG-${var.deploy_id}"
    }




