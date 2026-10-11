output "storage_containers_lookup_id" {
  description = "Map of id values across all storage_containers_lookup, keyed the same as var.storage_containers_lookup"
  value       = { for k, v in data.azurerm_storage_containers.storage_containers_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_containers_lookup_containers" {
  description = "Map of containers values across all storage_containers_lookup, keyed the same as var.storage_containers_lookup"
  value       = { for k, v in data.azurerm_storage_containers.storage_containers_lookup : k => v.containers if v.containers != null && length(v.containers) > 0 }
}
output "storage_containers_lookup_name_prefix" {
  description = "Map of name_prefix values across all storage_containers_lookup, keyed the same as var.storage_containers_lookup"
  value       = { for k, v in data.azurerm_storage_containers.storage_containers_lookup : k => v.name_prefix if v.name_prefix != null && length(v.name_prefix) > 0 }
}
output "storage_containers_lookup_storage_account_id" {
  description = "Map of storage_account_id values across all storage_containers_lookup, keyed the same as var.storage_containers_lookup"
  value       = { for k, v in data.azurerm_storage_containers.storage_containers_lookup : k => v.storage_account_id if v.storage_account_id != null && length(v.storage_account_id) > 0 }
}

