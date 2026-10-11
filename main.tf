data "azurerm_storage_containers" "storage_containers_lookup" {
  for_each = var.storage_containers_lookup

  storage_account_id = each.value.storage_account_id
  name_prefix        = each.value.name_prefix
}

