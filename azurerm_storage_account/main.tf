resource "azurerm_storage_account" "sa_name"{
    for_each = var.sa_name
    name = each.value.name
    location = each.value.location  
    resource_group_name = each.value.resource_group_name
    account_tier = each.value.account_tier
    account_replication_type = each.value.account_replication_type
    depends_on = [azurerm_resource_group.rg_name]
}