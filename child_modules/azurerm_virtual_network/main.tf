resource "azurerm_virtual_network" "virtual_network" {
    for_each = var.virtual_network
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.rg
    address_space = each.value.as
    # dns_servers = each.value.ds

}