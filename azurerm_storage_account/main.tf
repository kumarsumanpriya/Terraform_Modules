variable "storage" {}

resource "azurerm_storage_account" "storage" {
  for_each                 = var.storage
  name                     = each.value.name
  resource_group_name      = each.value.rg
  location                 = each.value.location
  account_tier             = each.value.tier
  account_replication_type = each.value.replication
}