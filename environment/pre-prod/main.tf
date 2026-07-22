module "resource" {
  source   = "../../child_modules/azurerm_resource_group"
  resource = var.resource
}


# module "storage" {
#   depends_on = [module.resource]
#   source     = "../../child_modules/azurerm_storage_account"
#   storage    = var.storage
# }


module "vnet" {
  depends_on = [module.resource]
  source     = "../../child_modules/azurerm_virtual_network"
  vnet       = var.vnet
}

module "subnets" {
  depends_on = [module.vnet]
  source     = "../../child_modules/azurerm_subnets"
  subnets    = var.subnets
}

# module "peering" {
#   depends_on = [module.virtual_network]
#   source     = "../../child_modules/azurerm_vnet_peering"
#   peering    = var.peering
# }

# module "nsg" {
#   depends_on = [module.subnets]
#   source     = "../../child_modules/azurerm_nsg"
#   nsg        = var.nsg
# }

module "pip" {
  depends_on = [module.resource]
  source     = "../../child_modules/azurerm_public_ip"
  pips       = var.pips
}

module "vms" {
  depends_on = [module.subnets]
  source     = "../../child_modules/azurerm_virtual_machine"
  vms        = var.vms
}