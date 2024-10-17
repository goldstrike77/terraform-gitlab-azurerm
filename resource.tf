module "azurerm_resource_group" {
  source            = "git::https://gitea.home.local/suzhetao/terraform-module-azurerm.git//resource-group?ref=v0.1"
  tags              = var.tags
  azurerm_resources = var.azurerm_resources
}

#module "azurerm_recovery_services_vault" {
#  source     = "git::https://gitea.home.local/suzhetao/terraform-module-azurerm.git//recovery-services-vault?ref=v0.1"
#  tags       = var.tags
#  azurerm_resources   = var.azurerm_resources
#  depends_on = [module.azurerm_resource_group]
#}

module "azurerm_virtual_machine" {
  source            = "git::https://gitea.home.local/suzhetao/terraform-module-azurerm.git//virtual-machine?ref=v0.1"
  tags              = var.tags
  azurerm_resources = var.azurerm_resources
  depends_on        = [module.azurerm_resource_group]
}
