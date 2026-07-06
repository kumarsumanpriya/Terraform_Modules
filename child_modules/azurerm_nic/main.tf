# resource "azurerm_network_interface" "nic" {
#   for_each            = var.nic
#   name                = each.value.name
#   location            = each.value.location
#   resource_group_name = each.value.rg
  
#   ip_configuration {
#     name                          = each.value.ip_config.name
#     subnet_id                     = each.value.ip_config.subnet_id
#     private_ip_address_allocation = each.value.ip_config.allocation
#   }
# }