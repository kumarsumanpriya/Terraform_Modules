module "resource" {
  source   = "../child_modules/azurerm_resource_group"
  resource = var.resource
}


module "storage" {
  depends_on = [module.resource]
  source     = "../child_modules/azurerm_storage_account"
  storage    = var.storage
}


module "virtual_network" {
  depends_on      = [module.resource]
  source          = "../child_modules/azurerm_virtual_network"
  virtual_network = var.virtual_network
}

module "subnets" {
  depends_on = [module.virtual_network]
  source     = "../child_modules/azurerm_subnet"
  subnets    = var.subnets
}

module "peering" {
  depends_on = [module.virtual_network]
  source     = "../child_modules/azurerm_vnet_peering"
  peering    = var.peering
}

module "nsg" {
  depends_on = [module.subnets]
  source     = "../child_modules/azurerm_nsg"
  nsg        = var.nsg
}