# resource "azurerm_bastion_host" "bastion" {
#   for_each            = var.bastion
#   name                = each.value.name
#   location            = each.value.location
#   resource_group_name = each.value.rg

#   ip_configuration {
#     name = 
#     subnet_id =
#     public_ip_address_id =
#   }
# }